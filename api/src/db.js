import pg from "pg";

export default class databaseApi {
  constructor(_db = "___") {
    this.db = _db;
  }

  insertData(id, args, table) {
    this.db.run();
  }
}
