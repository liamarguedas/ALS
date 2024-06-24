
export default class Database {
  constructor(db) {
    
    this.db = callDb(db);
  
  }

createTable(){
    this.db.serialize(() = {
    this.db.run("CREATE TABLE IF NOT EXISTS _ (_, _, _, _,)")
    })
  }


insertData(id, title, tweet) {
    this.db.run(
      "INSERT INTO ___(_,_,_) VALUES (?, ?, ?)",
      [],
      (err) => {
        if (err) {
          return console.log(err.message);
        }
        console.log("Row was added to the table");
      },
    );
  }


function callDb(db){
    
  switch(db) {

  case "als":
      return ;// TODO
  case "sourcebans":
      return ;// TODO
  case "stats":
      return ;// TODO
  default:
      return ;// TODO
      break;
}
  }
