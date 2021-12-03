const express = require("express");
const server = express();
const port = 3000;
server.get("/", (req, res) => {
  res.status(200).send("Hello, world from kapstone!");
});
server.listen(port, () => {
  console.log(`Server is listening on http://18.212.174.60:${port}`);
});
