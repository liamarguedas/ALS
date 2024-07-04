import dbConnection from "./cur/cursor.js";
import express from "express";
import bodyParser from "body-parser";

const api = express();
const port = 3000; // change in client !!!!

const sourcebans = "";
const rankme = "";

api.get("/", (req, res) => {
  res.send("_");
});

api.listen(port, () => {
  console.log("_");
});
