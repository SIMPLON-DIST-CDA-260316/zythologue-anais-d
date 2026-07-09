require('dotenv').config();

const { Pool } = require('pg');

const pool = new Pool({
  host: process.env.DB_HOST,
  port: process.env.POSTGRES_PORT,
  database: process.env.POSTGRES_DB,
  user: process.env.POSTGRES_USER,
  password: process.env.POSTGRES_PASSWORD,
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