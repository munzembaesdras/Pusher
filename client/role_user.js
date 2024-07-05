module.exports = async function (records, connection) {
  try {
    for (const record of records) {
      const { user_login, role_nom } = record;
      let role_id;
      // Récupérer l'ID de l'utilisateur
      const [userRows] = await connection.execute(
        "SELECT * FROM tb_users WHERE user_login = ?",
        [user_login]
      );

      if (userRows.length === 0) {
        console.log(
          `Aucun utilisateur trouvé avec le login "${user_login}". L'attribution de rôle est annulée.`
        );
        continue;
      }

      const user_id = userRows[0].user_id;

      // Vérifier si le rôle existe déjà
      const [roleRows] = await connection.execute("SELECT role_id FROM tb_role WHERE role_nom = ?", [role_nom]);

      if (roleRows.length === 0) {
        // Si le rôle n'existe pas, l'ajouter*
        const [insertRoleResult] = await connection.execute("INSERT INTO tb_role (role_nom) VALUES (?)", [role_nom]);
        role_id = insertRoleResult.insertId;

      } else {
        // Si le rôle existe déjà, obtenir son ID        
        role_id = roleRows[0].role_id;
        console.log(role_id)
      }

      // Vérifier si la relation existe déjà entre l'utilisateur et le rôle
      const [existingRoleUserRows] = await connection.execute("SELECT * FROM tb_role_user WHERE user_id = ? ", [user_id]

      );

      if (existingRoleUserRows.length > 0) {
        if (existingRoleUserRows.length > 1) {
          console.log(`Plusieurs rôles attribués à l'utilisateur "${user_login}".`);

          existingRoleUserRows.forEach(async (row) => {
            const supression = await connection.execute("DELETE FROM tb_role_user WHERE role_user_id = ?", [row.role_user_id]);
            await connection.execute("INSERT INTO tb_role_user (user_id, role_id) VALUES (?, ?)", [user_id, role_id]);
            console.log(row.role_user_id);
            
          });
          continue;
        }
        console.log(`La relation entre l'utilisateur "${user_login}" et le rôle "${role_nom}" existe déjà.`);
        // Mettre à jour la relation entre l'utilisateur et le rôle
        await connection.execute("UPDATE tb_role_user SET `role_id` = ? WHERE user_id = ?", [role_id, user_id]);
        continue;
      }

      // Insérer la relation entre l'utilisateur et le rôle
      await connection.execute("INSERT INTO tb_role_user (user_id, role_id) VALUES (?, ?)", [user_id, role_id]);

      console.log(`Le rôle "${role_nom}" a été attribué à l'utilisateur "${user_login}" avec succès.`);
    }
  } catch (error) {
    console.log("Une erreur s'est produite lors de l'attribution des rôles:", error);
  }
  await connection.end();
};
