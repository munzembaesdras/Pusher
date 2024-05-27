module.exports = async function (records, connection) {
    for (const record of records) {
      const { user_login } = record;
  
      // Vérifiez si la clé existe déjà
      
      const [rows] = await connection.execute(
        "SELECT * FROM tb_users WHERE user_login = ?",
        [user_login]
      );
    
      if (rows.length > 0) {
        for (const row of rows) {
          for (const key in row) {
            
            if (row.hasOwnProperty(key)) {
              if (key !== "user_is_connect" && key !== "user_id" && row[key] !== record[key]) {
                let newValue = record[key];
                let param = [newValue, row.user_login];
                await connection.execute(
                  `UPDATE tb_users set ${key}=? where user_login=?`,
                  param
                );
            }
            }
          }
        }
        continue;
      }
  
      // La clé n'existe pas, insérez le record
      const {
            user_name,
            user_lastname,
            user_password,
            user_status,
            partenaire_id,
            creation_date,
            version,
            user_mail,
            user_is_connect,
            user_type_connexion,
            user_code
      } = record;
  
      const sql = `
          INSERT INTO tb_users (
            user_login,
            user_name,
            user_lastname,
            user_password,
            user_status,
            partenaire_id,
            creation_date,
            version,
            user_mail,
            user_is_connect,
            user_type_connexion,
            user_code
          ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        `;
  
      const params = [
            user_login,
            user_name,
            user_lastname,
            user_password,
            user_status,
            partenaire_id,
            creation_date,
            version,
            user_mail,
            user_is_connect,
            user_type_connexion,
            user_code
      ];
  
      const [result] = await connection.execute(sql, params);
      /* let role_id=69;
      await connection.execute("INSERT INTO tb_role_user SET role_id = ?, user_id = ?", [role_id, result.insertId]); */
    }
    await connection.end();
  };
  