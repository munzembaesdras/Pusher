module.exports = async function (records, connection) {
  for (const record of records) {
    const { role_nom, role_status, partenairenom } = record;

    // Vérifier si le rôle existe déjà
    const [existingRoles] = await connection.execute(
      "SELECT * FROM tb_role WHERE role_nom = ?",
      [role_nom]
    );

    if (existingRoles.length > 0) {
      // Mise à jour des champs qui ont changé
      for (const existingRole of existingRoles) {
        for (const key in existingRole) {
          if (existingRole.role_status !== record.role_status) {
            console.log(
              `Le rôle "${role_nom}" existe déjà. Mise à jour des informations...`
            );
            const newValue = record.role_status;
            await connection.execute(
              `UPDATE tb_role SET role_status = ? WHERE role_nom = ?`,
              [newValue, role_nom]
            );
          }
        }
      }
    } else {
      console.log(
        `Le rôle "${role_nom}" n'existe pas. Insertion d'un nouvel enregistrement...`
      );

      // Récupérer le partenaire_id correspondant au partenairenom
      const [partenaireRows] = await connection.execute(
        "SELECT partenaireid FROM tb_partenaire WHERE partenairenom = ?",
        [partenairenom]
      );

      if (partenaireRows.length === 0) {
        console.log(
          `Aucun partenaire trouvé avec le nom "${partenairenom}". L'enregistrement du rôle "${role_nom}" est annulé.`
        );
        continue;
      }

      const partenaire_id = partenaireRows[0].partenaireid;

      // Insérer un nouvel enregistrement dans tb_role
      const sql = `
        INSERT INTO tb_role (
          role_nom,
          role_status,
          partenaire_id
        ) VALUES (?, ?, ?)
      `;

      const params = [role_nom, role_status, partenaire_id];
      await connection.execute(sql, params);
      console.log(`Le rôle "${role_nom}" a été ajouté avec succès.`);
    }
  }

  await connection.end();
};
