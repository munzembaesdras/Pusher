module.exports = async function (records, connection) {
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
          throw new Error(
            `Utilisateur avec le login "${ticket_user_login}" non trouvé.`
          );
        }

        const [agenceRows] = await connection.execute(
          "SELECT agence_id FROM tb_agence WHERE agence_nom = ?",
          [ticket_agence_nom]
        );
        if (agenceRows.length > 0) {
          ticket_agence_id = agenceRows[0].agence_id;
        } else {
          throw new Error(
            `Agence avec le nom "${ticket_agence_nom}" non trouvée.`
          );
        }
      } catch (err) {
        console.error(
          `Erreur lors de la récupération des IDs nécessaires pour le ticket avec le numéro "${ticket_number}":`,
          err.message
        );
        return {
          error: `Erreur lors de la récupération des IDs nécessaires pour le ticket avec le numéro "${ticket_number}": ${err.message}`,
        };
      }

      // Insertion dans la table tb_ticket
      const sql = `
        INSERT INTO tb_ticket (
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
        ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
      `;

      const params = [
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
        ticket_service_name,
      ];
      console.log(params);

      try {
        await connection.execute(sql, params);
        console.log(
          `Le ticket avec le numéro "${ticket_number}" a été enregistré avec succès.`
        );
      } catch (err) {
        console.error(
          `Erreur lors de l'insertion du ticket avec le numéro "${ticket_number}":`,
          err.message
        );
        return {
          error: `Erreur lors de l'insertion du ticket avec le numéro "${ticket_number}": ${err.message}`,
        };
      }
    }
  } catch (err) {
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
