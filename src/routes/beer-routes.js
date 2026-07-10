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

/**
 * @swagger
 * /beers:
 *   post:
 *     summary: Crée une nouvelle bière
 *     tags: [Beers]
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             required:
 *               - name_beer
 *               - rate_alcohol
 *               - brewery_id
 *             properties:
 *               name_beer:
 *                 type: string
 *                 minLength: 2
 *                 maxLength: 50
 *                 pattern: "^[a-zA-ZÀ-ÿ0-9']+( [a-zA-ZÀ-ÿ0-9']+)*$"
 *                 description: Lettres, chiffres, apostrophes et espaces (pas en début/fin)
 *                 example: La Toulousaine
 *               resume_beer:
 *                 type: string
 *                 maxLength: 350
 *                 example: Une ambrée du Sud-Ouest
 *               with_alcohol:
 *                 type: boolean
 *                 default: true
 *                 example: true
 *               rate_alcohol:
 *                 type: number
 *                 minimum: 0
 *                 maximum: 10
 *                 example: 6.2
 *               category_id:
 *                 type: integer
 *                 example: 1
 *               brewery_id:
 *                 type: integer
 *                 example: 1
 *     responses:
 *       201:
 *         description: Bière créée avec succès
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: La bière a bien été enregistrée
 *                 data:
 *                   type: object
 *                   properties:
 *                     name_beer:
 *                       type: string
 *                       example: La Toulousaine
 *                     rate_alcohol:
 *                       type: number
 *                       example: 6.2
 *                     brewery_id:
 *                       type: integer
 *                       example: 1
 *       400:
 *         description: Données invalides (règle de validation non respectée)
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: Les informations entrées sont incorrectes
 *                 errors:
 *                   type: object
 *       500:
 *         description: Erreur serveur
 */
router.post('/', beerController.createBeer);

router.patch('/:id', beerController.updateBeer);

module.exports = router;