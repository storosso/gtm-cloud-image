// index.js
const express = require('express');
const cors = require('cors');
const app = express();
const port = 8080;

app.use(cors());
app.use(express.json());

// 🟢 Health check
app.get('/', (req, res) => {
  res.send('Server is running');
});

// 🟢 Working collect endpoint
app.post('/collect', (req, res) => {
  console.log('Data received:', req.body);
  res.status(200).send('Received!');
});

app.listen(port, () => {
  console.log(`✅ Server running at http://localhost:${port}`);
});
