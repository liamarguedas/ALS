import mariadb from "mariadb";

const pool = new mariadb.createPool({
  host: "localhost",
  user: "root",
  password: "1518",
  database: "ALS_TEST",
  connectionLimit: 5,
});

export default pool;
