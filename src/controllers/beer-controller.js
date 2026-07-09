const beerRepository = require('../repositories/beer-repository');

async function getAllBeers(req, res, next) {
  try {
    const beers = await beerRepository.getAllBeers();

    res.status(200).json({ message: beers.length > 0 ? 'Bières récupérées avec succès' : 'Cela fonctionne mais aucune bière n\'a été trouvée', data: beers });

  } catch (error) {
    next(error);
  }
};

async function getOneBeer(req, res, next) {
  try {
    const id = req.params.id;
    const beers = await beerRepository.getOneBeer(id);

    if (!beers) {
      res.status(404).json({ message: 'La bière introuvable' });
      return;
    }

    res.status(200).json({ message: 'La bière a été récupérée', data: beers });

  } catch (error) {
    next(error);
  }
};

module.exports = { getAllBeers, getOneBeer };