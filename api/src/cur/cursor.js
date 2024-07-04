import mariadb from "mariadb";

export default function dbConnection() {
  return mariadb.createPool({
    host: "localhost",
    user: "root",
    password: "",
    database: "ALS_TEST",
    connectionLimit: 5,
  });
}
