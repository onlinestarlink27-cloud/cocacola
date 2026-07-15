const express = require('express');
const cors = require('cors');
const pool = require('./db');
require('dotenv').config();

const app = express();
const PORT = process.env.PORT || 3000;

// Middleware
app.use(cors());
app.use(express.json());

// Rota de teste de conexão com BD
app.get('/api/health', async (req, res) => {
  try {
    const result = await pool.query('SELECT NOW()');
    res.json({
      status: 'OK',
      database: 'Conectado',
      timestamp: result.rows[0].now,
    });
  } catch (error) {
    res.status(500).json({
      status: 'ERRO',
      message: 'Falha na conexão com o banco de dados',
      error: error.message,
    });
  }
});

// Rota de exemplo para listar dados
app.get('/api/data', async (req, res) => {
  try {
    const result = await pool.query('SELECT * FROM tabela_exemplo LIMIT 10');
    res.json(result.rows);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

// Inicia o servidor
app.listen(PORT, () => {
  console.log(`Servidor rodando em http://localhost:${PORT}`);
  console.log('Acesse http://localhost:' + PORT + '/api/health para testar a conexão com BD');
});

module.exports = app;
