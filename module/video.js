const mysql = require("mysql2/promise");
const dbConfig = require("../config");
const { checkAndDownloadMissingVideos } = require("./sftpClient");

module.exports = async function (records, connection) {
  for (const record of records) {
    const { video_key } = record;

    // Vérifiez si la clé existe déjà
    const [rows] = await connection.execute(
      "SELECT * FROM tb_video WHERE video_key = ?",
      [video_key]
    );

    if (rows.length > 0) { 
      for (const row of rows) {
        for (const key in row) {
          if (row.hasOwnProperty(key)) {
            if (key !== "video_id" && row[key] !== record[key]) {
              let newValue = record[key];
              let param = [newValue, row.video_key];
              await connection.execute(
                `UPDATE tb_video set ${key}=? where video_key=?`,
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
      video_name,
      video_desc,
      video_create_user_id,
      video_modify_user_id,
      video_create_date,
      video_modify_date,
      video_status,
    } = record;
    const sql = `
        INSERT INTO tb_video (
          video_name,
          video_desc,
          video_create_user_id,
          video_modify_user_id,
          video_create_date,
          video_modify_date,
          video_status,
          video_key
        ) VALUES (?, ?, ?, ?, ?, ?, ?, ?)
      `;

    const params = [
      video_name,
      video_desc,
      video_create_user_id,
      video_modify_user_id,
      video_create_date,
      video_modify_date,
      video_status,
      video_key,
    ];
    await connection.execute(sql, params);
  }
  await connection.end();

  // Après avoir enregistré les vidéos, vérifiez et téléchargez les vidéos manquantes
  await checkAndDownloadMissingVideos();
};
