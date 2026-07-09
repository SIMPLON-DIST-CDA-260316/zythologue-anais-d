const swaggerJsdoc = require('swagger-jsdoc');

// Options générales de l'API, affichées en haut de l'interface Swagger
const options = {
  definition: {
    openapi: '3.0.0',
    info: {
      title: 'API Zythologue',
      version: '1.0.0',
      description: "API REST pour la gestion des bières, brasseries et catégories (projet Zythologue)",
    },
    servers: [
      {
        url: 'http://localhost:3000',
      },
    ],
  },
  // Chemin(s) vers les fichiers contenant les annotations @swagger à lire
  apis: ['./src/routes/*.js'],
};

const swaggerSpec = swaggerJsdoc(options);

module.exports = swaggerSpec;