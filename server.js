'use strict';

const express = require('express');

// Constants
const PORT = 8080;
const HOST = '0.0.0.0';

// App
const app = express();

app.get('/master', (req, res) => {
  res.send('Hello master\n');
});

app.get('/dev', (req, res) => {
  res.send('Hello dev\n');
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);
