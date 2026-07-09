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
router.get('/', beerController.getAllBeers);


// route qui récupère une bière
/**
 * @swagger
 * /beers/{id}:
 *   get:
 *     summary: Récupère une bière précise par son identifiant
 *     tags: [Beers]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *         description: L'identifiant unique de la bière (beer_id)
 *         example: 1
 *     responses:
 *       200:
 *         description: Bière trouvée et récupérée avec succès
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: La bière a été récupérée
 *                 data:
 *                   type: object
 *                   properties:
 *                     beer_id:
 *                       type: integer
 *                       example: 1
 *                     name_beer:
 *                       type: string
 *                       example: La Test
 *                     resume_beer:
 *                       type: string
 *                       example: Une bière de test
 *                     with_alcohol:
 *                       type: boolean
 *                       example: true
 *                     rate_alcohol:
 *                       type: number
 *                       example: 5.0
 *                     category_id:
 *                       type: integer
 *                       example: 1
 *                     brewery_id:
 *                       type: integer
 *                       example: 1
 *       404:
 *         description: Aucune bière trouvée avec cet identifiant
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: La bière introuvable
 *       500:
 *         description: Erreur serveur
 */
router.get('/:id', beerController.getOneBeer);


router.post('/', beerController.createBeer);

module.exports = router;