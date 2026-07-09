require('dotenv').config();

const express = require('express');

// Récupération des routes
const beerRoutes = require('./routes/beer-routes');

// Création de l'application Express
const app = express();

// swagger
const swaggerUi = require('swagger-ui-express');
const swaggerSpec = require('./config/swagger');

app.use(express.json());

app.use('/api-docs', swaggerUi.serve, swaggerUi.setup(swaggerSpec));

app.use("/beers", beerRoutes);

// Erreur
app.use((error, req, res, next) => {
  console.error('Erreur interceptée :', error.message);
  res.status(500).json({ message: 'Erreur serveur', data: null });
});

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
  console.log(`Serveur démarré sur http://localhost:${PORT}`);
});