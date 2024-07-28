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

      // Vérifier si ticket_status = 1 ou ticket_user_login est null
      if (ticket_status === 1 || ticket_user_login === null) {
        console.log(
          `Le ticket avec le numéro "${ticket_number}" ne sera pas enregistré car le ticket_status est 1 ou ticket_user_login est null.`
        );
        logger.info(
          ` Le ticket avec le numéro "${ticket_number}" ne sera pas enregistré car le ticket_status est 1 ou ticket_user_login est null.`
        );
        continue;
      }

      let ticket_service_id, ticket_user_id, ticket_agence_id;

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
          throw new Error(
            `Utilisateur avec le login "${ticket_user_login}" non trouvé.`
          );
        }

        const [agenceRows] = await connection.execute(
          "SELECT agence_id FROM tb_agence WHERE agence_nom = ?",
          [ticket_agence_nom]
        );
        console.log(agenceRows);
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
          ` Erreur lors de la récupération des IDs nécessaires pour le ticket avec le numéro "${ticket_number}": ${err.message}`
        );
        console.error(
          `Erreur lors de la récupération des IDs nécessaires pour le ticket avec le numéro "${ticket_number}":`,
          err.message
        );
        return {
          error: `Erreur lors de la récupération des IDs nécessaires pour le ticket avec le numéro "${ticket_number}": ${err.message}`,
        };
      }
      // Insertion dans la table tb_ticket
      const checkDuplicateSql = `SELECT ticket_number FROM tb_ticket WHERE ticket_number = ? and ticket_agence_nom = ? and ticket_date = ?`;

      try {
        const [duplicateRows] = await connection.execute(checkDuplicateSql, [
          ticket_number,
          ticket_agence_nom,
          new Date(ticket_date).toISOString().slice(0, 19),
        ]);

        if (duplicateRows.length > 0) {
          logger.info(
            `Le ticket avec le numéro "${ticket_number}" existe déjà dans la base de données.`
          );
          console.log(
            `Le ticket avec le numéro "${ticket_number}" existe déjà dans la base de données.`
          );
          // Vous pouvez choisir d'effectuer une mise à jour ici si nécessaire.
          continue; // Passez au ticket suivant sans effectuer d'insertion.
        }
      } catch (err) {
        logger.error(
          `Erreur lors de la vérification de la duplication pour le ticket avec le numéro "${ticket_number}": ${err.message}`
        );
        console.error(
          `Erreur lors de la vérification de la duplication pour le ticket avec le numéro "${ticket_number}":`,
          err.message
        );
        return {
          error: `Erreur lors de la vérification de la duplication pour le ticket avec le numéro "${ticket_number}": ${err.message}`,
        };
      }

      // Si aucun ticket en double n'est trouvé, procédez à l'insertion normale.
      const sql = `INSERT INTO tb_ticket (
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

      const params = [
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

      try {
        await connection.execute(sql, params);
        logger.info(
          `Le ticket avec le numéro "${ticket_number}" a été enregistré avec succès.`
        );
        console.log(
          `Le ticket avec le numéro "${ticket_number}" a été enregistré avec succès.`
        );
      } catch (err) {
        logger.error(
          `Erreur lors de l'insertion du ticket avec le numéro "${ticket_number}": ${err.message}`
        );
        console.error(
          `Erreur lors de l'insertion du ticket avec le numéro "${ticket_number}":`,
          err
        );
        return {
          error: `Erreur lors de l'insertion du ticket avec le numéro "${ticket_number}": ${err}`,
        };
      }
    }
  } catch (err) {
    console.error(
      "Erreur lors du traitement des enregistrements: ",
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
