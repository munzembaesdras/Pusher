const mysql = require("mysql2/promise");
const dbConfig = require("../config");

module.exports = async function (records, connection) {
  console.log("je suis au annonnce \n")
  for (const record of records) {
    const { bande_annonce_key } = record;

    // Vérifiez si la clé existe déjà
    const [rows] = await connection.execute(
      "SELECT * FROM tb_bande_annonce WHERE bande_annonce_key = ?",
      [bande_annonce_key]
    );

    if (rows.length > 0) {
      for (const row of rows) {
        for (const key in row) {
          if (row.hasOwnProperty(key)) {
            if (key !== "bande_annonce_id" && row[key] !== record[key]) {
              let newValue = record[key];
              let param = [newValue, row.bande_annonce_key];
              await connection.execute(
                `UPDATE tb_bande_annonce SET ${key}=? WHERE bande_annonce_key=?`,
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
      bande_annonce_txt,
      bande_annonce_status,
      bande_annonce_date,
    } = record;
    const sql = `
        INSERT INTO tb_bande_annonce (
          bande_annonce_txt,
          bande_annonce_status,
          bande_annonce_date,
          bande_annonce_key
        ) VALUES (?, ?, ?, ?)
      `;

    const params = [
      bande_annonce_txt,
      bande_annonce_status,
      bande_annonce_date,
      bande_annonce_key,
    ];
    await connection.execute(sql, params);
  }
  await connection.end();
};