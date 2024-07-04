import pool from "./cursor.js";

async function getData() {
  let conn = await pool.getConnection();
  return conn.query(`SELECT * FROM rankme`);
}

console.log(await getData());
