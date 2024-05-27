module.exports = async function (records, connection) {
  for (const record of records) {
    const { service_key } = record;

    // Vérifiez si la clé existe déjà
    const [rows] = await connection.execute(
      "SELECT * FROM tb_service WHERE service_key = ?",
      [service_key]
    );

    if (rows.length > 0) {
      for (const row of rows) {
        for (const key in row) {
          if (row.hasOwnProperty(key)) {
            if (key !== "service_id" && row[key] !== record[key]) {
              let newValue = record[key];
              let param = [newValue, row.service_key];
              await connection.execute(
                `UPDATE tb_service set ${key}=? where service_key=?`,
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
      service_name,
      service_desc,
      service_create_user_id,
      service_modify_user_id,
      service_create_date,
      service_modify_date,
      service_status,
      service_icon,
      service_priority,
      service_mono_file,
    } = record;
console.log(record);
    const sql = `
        INSERT INTO tb_service (
          service_name,
          service_desc,
          service_create_user_id,
          service_modify_user_id,
          service_create_date,
          service_modify_date,
          service_status,
          service_icon,
          service_priority,
          service_mono_file,
          service_key
        ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
      `;

    const params = [
      service_name,
      service_desc,
      service_create_user_id,
      service_modify_user_id,
      service_create_date,
      service_modify_date,
      service_status,
      service_icon,
      service_priority,
      service_mono_file,
      service_key,
    ];
    const [result] = await connection.execute(sql, params);
 
    await connection.execute("INSERT INTO tb_seuils_alert SET seuils_alert_service = ?", [result.insertId]);
  }
  await connection.end();
};
