const express = require('express');
const app = express();

const VERSION = "Version 12";

app.get('/', (req, res) => {
  res.send(`<h1>Hello from ${VERSION}</h1>`);
});

app.listen(3000, () => {
  console.log("UI app running on port 3000");
});

