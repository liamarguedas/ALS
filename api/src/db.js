
export default class Database {
  constructor(_db = "./tbd") {
    this.db = new sqlite3.Database(_db);
  }

createTable(){
    this.db.serialize(() = {
    this.db.run("CREATE TABLE IF NOT EXISTS _ (_, _, _, _,)");
    })
  }
