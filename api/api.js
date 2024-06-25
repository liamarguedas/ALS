// MAIN API ENTRY POINT
//
//

import express from "express";
import bodyParser from "body-parser";

const api = express();
const port = 3000; // change in client !!!!

api.get("/", (req, res) => {
  res.send("HELLO WORLD");
});

api.listen(port, () => {
  console.log("FUNCIONANDOOOOOO");
});
