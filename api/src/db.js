import pool from "./cur/cursor.js";

export default class connect {
  constructor(table) {
    this.table = table;
  }

  async selectData() {
    let conn;

    try {
      conn = await pool.getConnection();
      const result = await conn.query(`SELECT * FROM ${this.table}`);
      return result;
    } catch (err) {
      console.error("Erro ao executar o query");
      throw err;
    } finally {
      if (conn) conn.release();
    }
  }

  async sendQuery(query) {
    let conn;

    try {
      conn = await pool.getConnection();
      const result = await conn.query(query);
      return result;
    } catch (err) {
      console.error("Erro ao executar o query");
      throw err;
    } finally {
      if (conn) conn.release();
    }
  }

  async selectDataColumn(column) {
    let conn;

    try {
      conn = await pool.getConnection();
      const query = `SELECT ${column} FROM ${this.table}`;
      const result = await conn.query(query);
      return result;
    } catch (err) {
      console.error("Erro ao executar o query");
      throw err;
    } finally {
      if (conn) conn.release();
    }
  }

  async filterRow(column, value, returnColumn) {
    let conn;
    let query;

    try {
      conn = await pool.getConnection();

      if (returnColumn) {
        query = `SELECT ${column} FROM ${this.table} WHERE ${column} = ?`;
      } else {
        query = `SELECT * FROM ${this.table} WHERE ${column} = ?`;
      }
      const result = await conn.query(query, [value]);
      return result;
    } catch (err) {
      console.error("Erro ao executar o query");
      throw err;
    } finally {
      if (conn) conn.release();
    }
  }
}
