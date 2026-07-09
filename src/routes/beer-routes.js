const express = require('express');
const router = express.Router();
const beerController = require('../controllers/beer-controller');


// route qui récupère toutes les bières
/**
 * @swagger
 * /beers:
 *   get:
 *     summary: Récupère la liste de toutes les bières
 *     tags: [Beers]
 *     responses:
 *       200:
 *         description: Requête traitée avec succès (liste pleine ou vide)
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: Bières récupérées avec succès
 *                 data:
 *                   type: array
 *                   items:
 *                     type: object
 *                     properties:
 *                       beer_id:
 *                         type: integer
 *                         example: 1
 *                       name_beer:
 *                         type: string
 *                         example: La Test
 *                       resume_beer:
 *                         type: string
 *                         example: Une bière de test
 *                       with_alcohol:
 *                         type: boolean
 *                         example: true
 *                       rate_alcohol:
 *                         type: number
 *                         example: 5.0
 *                       category_id:
 *                         type: integer
 *                         example: 1
 *                       brewery_id:
 *                         type: integer
 *                         example: 1
 *             examples:
 *               avecBieres:
 *                 summary: Des bières existent en base
 *                 value:
 *                   message: Bières récupérées avec succès
 *                   data:
 *                     - beer_id: 1
 *                       name_beer: La Test
 *                       resume_beer: Une bière de test
 *                       with_alcohol: true
 *                       rate_alcohol: 5.0
 *                       category_id: 1
 *                       brewery_id: 1
 *               listeVide:
 *                 summary: Aucune bière en base
 *                 value:
 *                   message: Aucune bière trouvée
 *                   data: []
 *       500:
 *         description: Erreur serveur
 */
router.get('/beers', beerController.getAllBeers);


// route qui récupère une bière
router.get('/beers/:id', beerController.getOneBeer);

module.exports = router;