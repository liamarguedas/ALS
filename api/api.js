import connect from "./src/db.js";
import express from "express";
// import bodyParser from "body-parser";

const api = express();
const port = 3000; // change in client !!!!

const rankme = new connect("rankme");

api.get("/", async (req, res) => {
  const data = await rankme.selectData();
  console.log(data);
  res.send("hello wouuuurld");
});

api.listen(port, () => {
  console.log("API runnning");
});
