// POSTGREE DB

import pg from "pg";

export default class Database {
  consturctor(db) {
    this.db = connectDB(db);
  }

  createTable(tableName, values) {
    // tableName:  String
    // values: Array (column name, column type, any other arguments *)

    this.db.serialize(() => {
      const query = "CREATE TABLE IF NOT EXISTS $1 ($2)";
      const queryValues = [tableName, values];

      this.db.run(query, queryValues);
    });
  }

  insertTable(tableName, values, filter = false, filterCondition = false) {
    this.db.serialize(() => {
      if (filter) {
        const query = "INSERT INTO $1($2) $3";
        const queryValues = [tableName, values, filterCondition];
      } else {
        const query = "INSERT INTO $1($2)";
        const queryValues = [tableName, values];
      }

      this.db.run(query, queryValues);

      // NEEDS TO RETURN SOMETHING, TODO!!
      //
      //
    });
  }

  selectData(tableName) {
    this.db.serialize(() => {
      const result = this.db.run("SELECT * FROM $1", [tableName]);
      return result;
    });
  }

  selectDataColumn(tableName, column) {
    this.db.serialize(() => {
      const query = "SELECT $1 FROM $2";
      const queryValues = [column, tableName];

      const result = this.db.run(query, queryValues);
      return result;
    });
  }

  filterRow(tableName, column, value) {
    this.db.serialize(() => {
      const query = "SELECT $1 FROM $2 WHERE $3 = $4";
      const queryValues = [column, tableName, column, value];

      const result = this.db.run(query, queryValues);
      return result;
    });
  }

  deleteDataFilter(tableName, column, value) {
    this.db.serialize(() => {
      const query = "DELETE FROM $1 WHERE $2 = $3";
      const queryValues = [tableName, column, value];

      this.db.run(query, queryValues);
    });
  }

  closeDb() {
    this.db.close();
  }
}

// FUNCTION TO CREATE CONNECTION TO DATABSE
function connectDB(db) {
  switch (db) {
    case "sourcebans":
      const dbConection = new pg.Client({
        user: "postgress",
        host: "localhost",
        database: "sourcebans",
        password: "NAO SEI", // todo
        port: "NAO SEI", // TODO
      });
      return dbConection; //todo

    case "hlstats":
      const dbConection = new pg.Client({
        user: "postgress",
        host: "localhost",
        database: "hlstats",
        password: "NAO SEI", // todo
        port: "NAO SEI", // TODO
      });
      return dbConection; //todo

    case "web":
      const dbConection = new pg.Client({
        user: "postgress",
        host: "localhost",
        database: "web",
        password: "NAO SEI", // todo
        port: "NAO SEI", // TODO
      });
      return dbConection; //todo

    default:
      return new Array(); // returns empty array in case of no db provided
  }
}
