-- Lister les bières par taux d'alcool croissant
SELECT name_beer, rate_alcohol 
FROM beer 
ORDER BY rate_alcohol;

-- Afficher le nombre de bières par catégorie
SELECT c.name_category AS category, COUNT(b.beer_id)
FROM category c
LEFT JOIN beer b
ON c.category_id = b.category_id
GROUP BY c.name_category;

-- Trouver toutes les bières d'une brasserie donnée
SELECT be.name_beer AS beer, br.brewery_name AS brewery
FROM beer be 
INNER JOIN brewery br 
ON be.brewery_id = br.brewery_id 
WHERE br.brewery_name = 'Chimay';

-- Lister les utilisateurs et le nombre de bières ajoutées à leurs favoris
SELECT u.nickname_user AS users, COUNT(b.beer_id) AS "Number of beer(s) in favorite"
FROM users u 
LEFT JOIN add_to_favorite a 
ON u.user_id = a.user_id
LEFT JOIN beer b 
ON a.beer_id = b.beer_id
GROUP BY u.nickname_user;

-- Ajouter une nouvelle bière à la base de données
INSERT INTO beer (name_beer, resume_beer, with_alcohol, rate_alcohol, category_id, brewery_id) 
VALUES ('La Toulousaine', 'Une ambrée généreuse aux notes de miel et de pain grillé, brassée avec passion dans le Sud-Ouest', true, 6.2, 4, 5);

-- Afficher les bières avec leur brasserie, triées par pays
SELECT be.name_beer AS beer, br.brewery_name AS brewery, br.brewery_country AS Country
FROM beer be 
INNER JOIN brewery br 
ON be.beer_id = br.brewery_id
ORDER BY br.brewery_country;

-- Lister les bières avec leurs ingrédients
-- STRING_AGG() -> regrouper les noms d'ingrédients dans la même ligne sinon erreur avec GROUP BY
SELECT b.name_beer AS beer, STRING_AGG(i.ingredient_name, ', ') AS Ingredients
FROM beer b
INNER JOIN contain c 
ON b.beer_id = c.beer_id
INNER JOIN ingredient i
ON c.ingredient_id = i.ingredient_id
GROUP BY b.name_beer;

-- Afficher les brasseries produisant plus de cinq bières
SELECT br.brewery_name AS brewery, COUNT(be.beer_id) AS "Number of beer"
FROM brewery br
INNER JOIN beer be
ON br.brewery_id = be.brewery_id
GROUP BY br.brewery_name
HAVING COUNT(be.beer_id) > 5;

-- Lister les bières qui ne figurent dans aucun favori
SELECT b.name_beer AS beer
FROM beer b 
LEFT JOIN add_to_favorite a 
ON b.beer_id = a.beer_id
WHERE a.beer_id IS NULL;

-- Trouver les bières favorites communes entre deux utilisateurs
SELECT b.name_beer AS beer
FROM add_to_favorite user1
INNER JOIN add_to_favorite user2
ON user1.beer_id = user2.beer_id
INNER JOIN beer b
ON user1.beer_id = b.beer_id
WHERE user1.user_id = 6 AND user2.user_id = 10;

-- Afficher les brasseries dont les bières ont une moyenne de notes supérieure à une valeur donnée
SELECT br.brewery_name AS Brewery, be.name_beer AS Beer, AVG(o.note_opinion) AS Note
FROM brewery br
INNER JOIN beer be
ON br.brewery_id = be.brewery_id
INNER JOIN opinion o 
ON be.beer_id = o.beer_id
GROUP BY br.brewery_name, be.name_beer
HAVING AVG(o.note_opinion) > 2;

-- Mettre à jour les informations d'une brasserie
UPDATE brewery 
SET brewery_name = 'Brewdog Beer' 
WHERE brewery_name = 'Brewdog';

-- Supprimer les photos d'une bière donnée
DELETE FROM image i
USING beer b
WHERE i.beer_id = b.beer_id
AND b.beer_id = 8;

-- BONUS 2
-- test vérification
SELECT beer_name_log as beer, log_create_at as "created at", action_log
FROM beer_log;