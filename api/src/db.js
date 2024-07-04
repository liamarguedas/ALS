export default class Database {
  consturctor(db, table) {
    this.pool = db;
    this.table = table;
  }

  async selectData() {
    let conn;

    try {
      conn = await this.pool.getConnection();
      const result = await conn.query(`SELECT * FROM ${this.table}`);
      return result;
    } catch (err) {
      console.error("Erro ao executar o query");
      throw err;
    } finally {
      if (conn) conn.release();
    }
  }

  selectDataColumn(column) {
    this.db.serialize(() => {
      const query = "SELECT $1 FROM $2";
      const queryValues = [column, this.table];

      const result = this.db.run(query, queryValues);
      return result;
    });
  }

  filterRow(column, value) {
    this.db.serialize(() => {
      const query = "SELECT $1 FROM $2 WHERE $3 = $4";
      const queryValues = [column, this.table, column, value];

      const result = this.db.run(query, queryValues);
      return result;
    });
  }

  closeDb() {
    this.db.close();
  }
}
