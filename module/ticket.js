const { log } = require("winston");
const logger = require("../log");

module.exports = async function (records, connection) {
  const moment = require("moment");

  try {
    for (const record of records) {
      const {
        ticket_date,
        ticket_heure_debut,
        ticket_heure_fin,
        ticket_date2,
        ticket_number,
        ticket_guichet,
        ticket_status,
        ticket_client_number,
        ticket_is_vip,
        ticket_raison_id,
        ticket_agence_nom,
        ticket_syncronized,
        ticket_user_login,
        ticket_service_name,
      } = record;

      let ticket_service_id,
        ticket_user_id = 0,
        ticket_agence_id;

      // Récupérer les IDs nécessaires
      try {
        const [serviceRows] = await connection.execute(
          "SELECT service_id FROM tb_service WHERE service_name = ?",
          [ticket_service_name]
        );
        if (serviceRows.length > 0) {
          ticket_service_id = serviceRows[0].service_id;
        } else {
          logger.error(
            `Service avec le nom "${ticket_service_name}" non trouvé.`
          );
          throw new Error(
            `Service avec le nom "${ticket_service_name}" non trouvé.`
          );
        }

        if (ticket_user_login !== null) {
          const [userRows] = await connection.execute(
            "SELECT user_id FROM tb_users WHERE user_login = ?",
            [ticket_user_login]
          );
          if (userRows.length > 0) {
            ticket_user_id = userRows[0].user_id;
          } else {
            logger.error(
              `Utilisateur avec le login "${ticket_user_login}" non trouvé.`
            );
          }
        }

        const [agenceRows] = await connection.execute(
          "SELECT agence_id FROM tb_agence WHERE agence_nom = ?",
          [ticket_agence_nom]
        );
        if (agenceRows.length > 0) {
          ticket_agence_id = agenceRows[0].agence_id;
        } else {
          logger.error(
            `Agence avec le nom "${ticket_agence_nom}" non trouvée.`
          );
          throw new Error(
            `Agence avec le nom "${ticket_agence_nom}" non trouvée.`
          );
        }
      } catch (err) {
        logger.error(
          `Erreur lors de la récupération des IDs nécessaires pour le ticket avec le numéro "${ticket_number}": ${err.message}`
        );
        console.error(
          `Erreur lors de la récupération des IDs nécessaires pour le ticket avec le numéro "${ticket_number}":`,
          err.message
        );
        return {
          error: `Erreur lors de la récupération des IDs nécessaires pour le ticket avec le numéro "${ticket_number}": ${err.message}`,
        };
      }

      // Vérification des doublons
      const checkDuplicateSql = `SELECT ticket_number FROM tb_ticket WHERE ticket_number = ? AND ticket_agence_nom = ? AND ticket_date = ?`;

      try {
        const [duplicateRows] = await connection.execute(checkDuplicateSql, [
          ticket_number,
          ticket_agence_nom,
          new Date(ticket_date).toISOString().slice(0, 19),
        ]);

        if (duplicateRows.length > 0) {
          // Mise à jour du ticket existant
          const updateSql = `UPDATE tb_ticket SET 
            ticket_heure_debut = ?, 
            ticket_heure_fin = ?, 
            ticket_date2 = ?, 
            ticket_service_id = ?, 
            ticket_guichet = ?, 
            ticket_user_id = ?, 
            ticket_status = ?, 
            ticket_client_number = ?, 
            ticket_is_vip = ?, 
            ticket_raison_id = ?, 
            ticket_syncronized = ?, 
            ticket_user_login = ?, 
            ticket_service_name = ? 
            WHERE ticket_number = ? AND ticket_agence_nom = ? AND ticket_date = ?`;

          const updateParams = [
            ticket_heure_debut,
            ticket_heure_fin,
            new Date(ticket_date).toISOString().slice(0, 19),
            ticket_service_id,
            ticket_guichet,
            ticket_user_id,
            ticket_status,
            ticket_client_number,
            ticket_is_vip,
            ticket_raison_id,
            ticket_syncronized,
            ticket_user_login,
            ticket_service_name,
            ticket_number,
            ticket_agence_nom,
            new Date(ticket_date).toISOString().slice(0, 19),
          ];

          await connection.execute(updateSql, updateParams);
          logger.info(
            `Le ticket avec le numéro "${ticket_number}" a été mis à jour avec succès.`
          );
          console.log(
            `Le ticket avec le numéro "${ticket_number}" a été mis à jour avec succès.`
          );
        } else {
          // Insertion d'un nouveau ticket
          const insertSql = `INSERT INTO tb_ticket (
            ticket_date,
            ticket_heure_debut,
            ticket_heure_fin,
            ticket_date2,
            ticket_number,
            ticket_service_id,
            ticket_guichet,
            ticket_user_id,
            ticket_status,
            ticket_client_number,
            ticket_is_vip,
            ticket_raison_id,
            ticket_agence_id,
            ticket_agence_nom,
            ticket_syncronized,
            ticket_user_login,
            ticket_service_name
          ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`;

          const insertParams = [
            new Date(ticket_date).toISOString().slice(0, 19),
            ticket_heure_debut,
            ticket_heure_fin,
            new Date(ticket_date).toISOString().slice(0, 19),
            ticket_number,
            ticket_service_id,
            ticket_guichet,
            ticket_user_id,
            ticket_status,
            ticket_client_number,
            ticket_is_vip,
            ticket_raison_id,
            ticket_agence_id,
            ticket_agence_nom,
            ticket_syncronized,
            ticket_user_login,
            ticket_service_name,
          ];

          await connection.execute(insertSql, insertParams);
          logger.info(
            `Le ticket avec le numéro "${ticket_number}" a été enregistré avec succès.`
          );
          console.log(
            `Le ticket avec le numéro "${ticket_number}" a été enregistré avec succès.`
          );
        }
      } catch (err) {
        logger.error(
          `Erreur lors de la vérification ou de la mise à jour/insertion du ticket avec le numéro "${ticket_number}": ${err.message}`
        );
        console.error(
          `Erreur lors de la vérification ou de la mise à jour/insertion du ticket avec le numéro "${ticket_number}":`,
          err.message
        );
        return {
          error: `Erreur lors de la vérification ou de la mise à jour/insertion du ticket avec le numéro "${ticket_number}": ${err.message}`,
        };
      }
    }
  } catch (err) {
    logger.error(
      `Erreur lors du traitement des enregistrements: ${err.message}`
    );
    console.error(
      "Erreur lors du traitement des enregistrements:",
      err.message
    );

    return {
      error: `Erreur lors du traitement des enregistrements: ${err.message}`,
    };
  } finally {
    await connection.end();
  }
  return { success: true };
};
