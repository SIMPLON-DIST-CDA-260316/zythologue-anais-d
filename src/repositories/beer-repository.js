const pool = require('../config/db');

// Fonction qui va chercher toutes les bières en base
async function getAllBeers() {
  try {
    // pool.query() envoie la requête SQL et attend la réponse de PostgreSQL
    const result = await pool.query('SELECT * FROM beer');
    // retourne le résultat sous forme de tableau
    return result.rows;

  } catch (error) {
    console.error('Erreur lors de la récupération des bières :', error.message);
    throw error;
  }
};

// Fonction qui va chercher une bière
async function getOneBeer(id) {
  try {
    // pool.query() envoie la requête SQL et attend la réponse de PostgreSQL
    const result = await pool.query('SELECT * FROM beer WHERE beer_id = $1', [id]);
    return result.rows[0];

  } catch (error) {
    console.error('Erreur lors de la récupération des bières :', error.message);
    throw error;
  }
};

// Fonction qui va modifier une bière
async function createBeer(newBeer) {
  try {
    const { name_beer, resume_beer, with_alcohol, rate_alcohol, category_id, brewery_id } = newBeer;

    const result = await pool.query('INSERT INTO beer (name_beer, resume_beer, with_alcohol, rate_alcohol, category_id, brewery_id) VALUES ($1, $2, $3, $4, $5, $6) RETURNING beer_id, name_beer, resume_beer, with_alcohol, rate_alcohol, category_id, brewery_id', [name_beer, resume_beer, with_alcohol, rate_alcohol, category_id, brewery_id]
    );
    // result.rows[0] contient la bière créée
    return result.rows[0];

  } catch (error) {
    console.error('Erreur lors de la création de la bière :', error.message);
    throw error;
  }
};

module.exports = { getAllBeers, getOneBeer, createBeer };