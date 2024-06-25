// POSTGREE DB
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
    return;
  }
}

// FUNCTION TO CREATE CONNECTION TO DATABSE
function connectDB(db) {
  switch (db) {
    case "sourcebans":
      return; //todo

    case "hlstats":
      return; //todo

    case "web":
      return;

    default:
      return; // returns null value itself
  }
}
