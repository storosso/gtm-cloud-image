const express = require('express');
const app = express();

// ✅ CORS setup
app.use((req, res, next) => {
  res.setHeader('Access-Control-Allow-Origin', 'https://storosso.com');
  res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS');
  res.setHeader('Access-Control-Allow-Headers', 'Content-Type');
  res.setHeader('Access-Control-Allow-Credentials', 'true');

  if (req.method === 'OPTIONS') {
    return res.sendStatus(200);
  }

  next();
});

// ➕ Minimal /collect route
app.post('/collect', (req, res) => {
  res.send('CORS test successful');
});

app.listen(process.env.PORT || 8080, () => {
  console.log('Server listening...');
});
