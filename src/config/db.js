require('dotenv').config();

const { Pool } = require('pg');

const pool = new Pool({
  host: process.env.DB_HOST,
  port: process.env.DB_PORT,
  database: process.env.DB_NAME,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
});

// confirme ou non la connexion à la BDD
pool.connect()
  .then((client) => {
    console.log('Connexion à la base Zythologue réussie');
    client.release();
  })
  .catch((err) => {
    console.error('Erreur de connexion à la base :', err.message);
  });

module.exports = pool;