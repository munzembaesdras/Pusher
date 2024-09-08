module.exports = async function (records, connection) {
    for (const record of records) {
      const { partenaireid } = record;
      // Vérifiez si la clé existe déjà
      const [rows] = await connection.execute(
        "SELECT * FROM tb_partenaire WHERE partenaireid = ?",
        [partenaireid]
      );
      if (rows.length > 0) {
        for (const row of rows) {
          for (const key in row) {
            if (row.hasOwnProperty(key)) {
              if (key !== "partenaireid" && row[key] !== record[key]) {
                let newValue = record[key];
                let param = [newValue, row.partenaireid];
                await connection.execute(
                  `UPDATE tb_partenaire set ${key}=? where partenaireid=?`,
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
        partenairenom,
        partenairestatus,
        partenaire_sigle
      } = record;
      const sql = `
            INSERT INTO tb_partenaire (
            partenaireid,
            partenairenom,
            partenairestatus,
            partenaire_sigle
          ) VALUES (?, ?, ?, ?)
        `;
      const params = [
        partenaireid,
        partenairenom,
        partenairestatus,
        partenaire_sigle
      ];
     await connection.execute(sql, params);
    }
    await connection.end();
};