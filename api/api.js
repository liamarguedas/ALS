import connect from "./src/db.js";
import express from "express";
// import bodyParser from "body-parser";

const api = express();
const port = 3000; // change in client !!!!

const rankme = new connect("rankme");
// const sourbans = new connect("TODO");

api.get("/", async (req, res) => {
  const data = await rankme.selectData();
  res.json(data);
});

api.listen(port, () => {
  console.log("API runnning");
});
