-- Catégories
INSERT INTO category (name_category) VALUES ('Blonde');
INSERT INTO category (name_category) VALUES ('Brune');
INSERT INTO category (name_category) VALUES ('Blanche');
INSERT INTO category (name_category) VALUES ('Ambrée');
INSERT INTO category (name_category) VALUES ('IPA');
INSERT INTO category (name_category) VALUES ('Stout');

-- Brasseries
INSERT INTO brewery (brewery_name, brewery_country, brewery_adress, brewery_photo_profil) VALUES ('Brasserie du Mont Blanc', 'France', '74190 Passy', '/uploads/breweries/mont_blanc.jpg');
INSERT INTO brewery (brewery_name, brewery_country, brewery_adress, brewery_photo_profil) VALUES ('Chimay', 'Belgique', 'Rue de Poteaupré 8, 6464 Baileux', '/uploads/breweries/chimay.jpg');
INSERT INTO brewery (brewery_name, brewery_country, brewery_adress, brewery_photo_profil) VALUES ('Guinness', 'Irlande', 'St James Gate, Dublin', '/uploads/breweries/guinness.jpg');
INSERT INTO brewery (brewery_name, brewery_country, brewery_adress, brewery_photo_profil) VALUES ('Brewdog', 'Ecosse', 'Ellon, Aberdeenshire', '/uploads/breweries/brewdog.jpg');
INSERT INTO brewery (brewery_name, brewery_country, brewery_adress, brewery_photo_profil) VALUES ('Brasserie Meteor', 'France', '6 Rue du Général Lebocq, 67270 Hochfelden', '/uploads/breweries/meteor.jpg');
INSERT INTO beer (name_beer, resume_beer, with_alcohol, rate_alcohol, category_id, brewery_id) VALUES ('Chimay Blanche', 'Une tripel dorée aux arômes épicés', true, 8.0, 1, 2);
INSERT INTO beer (name_beer, resume_beer, with_alcohol, rate_alcohol, category_id, brewery_id) VALUES ('Chimay Dorée', 'Une blonde légère et délicate', true, 4.8, 1, 2);
INSERT INTO beer (name_beer, resume_beer, with_alcohol, rate_alcohol, category_id, brewery_id) VALUES ('Chimay Verte', 'Une brune riche aux notes de fruits secs', true, 7.0, 2, 2);
INSERT INTO beer (name_beer, resume_beer, with_alcohol, rate_alcohol, category_id, brewery_id) VALUES ('Chimay Grand Réserve', 'La grande réserve de Chimay, complexe et chaleureuse', true, 9.0, 2, 2);
INSERT INTO beer (name_beer, resume_beer, with_alcohol, rate_alcohol, category_id, brewery_id) VALUES ('Brewdog Dead Pony', 'Une session IPA légère et rafraîchissante', true, 3.8, 5, 4);
INSERT INTO beer (name_beer, resume_beer, with_alcohol, rate_alcohol, category_id, brewery_id) VALUES ('Brewdog Hazy Jane', 'Une IPA trouble aux arômes tropicaux', true, 5.0, 5, 4);
INSERT INTO beer (name_beer, resume_beer, with_alcohol, rate_alcohol, category_id, brewery_id) VALUES ('Brewdog Elvis Juice', 'Une IPA aux agrumes et pamplemousse', true, 6.5, 5, 4);
INSERT INTO beer (name_beer, resume_beer, with_alcohol, rate_alcohol, category_id, brewery_id) VALUES ('Brewdog Jet Black Heart', 'Une stout onctueuse aux notes de chocolat', true, 4.7, 6, 4);

-- Ingrédients
INSERT INTO ingredient (ingredient_name) VALUES ('Houblon');
INSERT INTO ingredient (ingredient_name) VALUES ('Malt');
INSERT INTO ingredient (ingredient_name) VALUES ('Levure');
INSERT INTO ingredient (ingredient_name) VALUES ('Eau');
INSERT INTO ingredient (ingredient_name) VALUES ('Orge');
INSERT INTO ingredient (ingredient_name) VALUES ('Blé');
INSERT INTO ingredient (ingredient_name) VALUES ('Coriandre');
INSERT INTO ingredient (ingredient_name) VALUES ('Avoine');

-- Bières
INSERT INTO beer (name_beer, resume_beer, with_alcohol, rate_alcohol, category_id, brewery_id) VALUES ('Mont Blanc Blonde', 'Une blonde légère aux arômes fruités', true, 5.0, 1, 1);
INSERT INTO beer (name_beer, resume_beer, with_alcohol, rate_alcohol, category_id, brewery_id) VALUES ('Chimay Bleue', 'Une brune forte aux notes de caramel', true, 9.0, 2, 2);
INSERT INTO beer (name_beer, resume_beer, with_alcohol, rate_alcohol, category_id, brewery_id) VALUES ('Chimay Rouge', 'Une ambrée douce et fruitée', true, 7.0, 4, 2);
INSERT INTO beer (name_beer, resume_beer, with_alcohol, rate_alcohol, category_id, brewery_id) VALUES ('Guinness Stout', 'La célèbre stout irlandaise crémeuse', true, 4.2, 6, 3);
INSERT INTO beer (name_beer, resume_beer, with_alcohol, rate_alcohol, category_id, brewery_id) VALUES ('Brewdog Punk IPA', 'Une IPA audacieuse aux arômes tropicaux', true, 5.6, 5, 4);
INSERT INTO beer (name_beer, resume_beer, with_alcohol, rate_alcohol, category_id, brewery_id) VALUES ('Brewdog Nanny State', 'Une IPA sans alcool', false, 0.5, 5, 4);
INSERT INTO beer (name_beer, resume_beer, with_alcohol, rate_alcohol, category_id, brewery_id) VALUES ('Meteor Blonde', 'Une blonde alsacienne rafraîchissante', true, 4.9, 1, 5);
INSERT INTO beer (name_beer, resume_beer, with_alcohol, rate_alcohol, category_id, brewery_id) VALUES ('Meteor Blanche', 'Une blanche légère aux notes d agrumes', true, 4.5, 3, 5);

-- Utilisateurs
INSERT INTO users (firstname_user, lastname_user, nickname_user, email_user, password_user, role_user, birth_date_user) VALUES ('Jean', 'Dupont', 'jeannot', 'jean.dupont@email.com', 'hashed_password_1', 'user', '1990-05-15');
INSERT INTO users (firstname_user, lastname_user, nickname_user, email_user, password_user, role_user, birth_date_user) VALUES ('Marie', 'Martin', 'mariette', 'marie.martin@email.com', 'hashed_password_2', 'user', '1985-08-22');
INSERT INTO users (firstname_user, lastname_user, nickname_user, email_user, password_user, role_user, birth_date_user) VALUES ('Pierre', 'Bernard', 'pierrot', 'pierre.bernard@email.com', 'hashed_password_3', 'user', '1995-03-10');
INSERT INTO users (firstname_user, lastname_user, nickname_user, email_user, password_user, role_user, birth_date_user) VALUES ('Sophie', 'Leblanc', 'soso', 'sophie.leblanc@email.com', 'hashed_password_4', 'user', '1992-11-30');
INSERT INTO users (firstname_user, lastname_user, nickname_user, email_user, password_user, role_user, birth_date_user) VALUES ('Admin', 'Admin', 'admin', 'admin@zythologue.com', 'hashed_password_admin', 'admin', '1988-01-01');
INSERT INTO users (firstname_user, lastname_user, nickname_user, email_user, password_user, role_user, birth_date_user) VALUES ('Lucas', 'Petit', 'lulu', 'lucas.petit@email.com', 'hashed_password_5', 'user', '1993-07-14');
INSERT INTO users (firstname_user, lastname_user, nickname_user, email_user, password_user, role_user, birth_date_user) VALUES ('Emma', 'Durand', 'emma_d', 'emma.durand@email.com', 'hashed_password_6', 'user', '1997-02-28');
INSERT INTO users (firstname_user, lastname_user, nickname_user, email_user, password_user, role_user, birth_date_user) VALUES ('Thomas', 'Moreau', 'toto', 'thomas.moreau@email.com', 'hashed_password_7', 'user', '1988-09-03');
INSERT INTO users (firstname_user, lastname_user, nickname_user, email_user, password_user, role_user, birth_date_user) VALUES ('Camille', 'Laurent', 'cami', 'camille.laurent@email.com', 'hashed_password_8', 'user', '1991-12-19');
INSERT INTO users (firstname_user, lastname_user, nickname_user, email_user, password_user, role_user, birth_date_user) VALUES ('Hugo', 'Simon', 'hugos', 'hugo.simon@email.com', 'hashed_password_9', 'user', '1994-04-07');

-- Avis
INSERT INTO opinion (resume_opinion, note_opinion, beer_id, user_id) VALUES ('Excellente blonde, très rafraîchissante !', 5, 1, 1);
INSERT INTO opinion (resume_opinion, note_opinion, beer_id, user_id) VALUES ('Très bonne brune, riche en saveurs', 4, 2, 1);
INSERT INTO opinion (resume_opinion, note_opinion, beer_id, user_id) VALUES ('La meilleure stout que j ai goûtée', 5, 4, 2);
INSERT INTO opinion (resume_opinion, note_opinion, beer_id, user_id) VALUES ('Belle IPA bien houblonnée', 4, 5, 2);
INSERT INTO opinion (resume_opinion, note_opinion, beer_id, user_id) VALUES ('Sympa pour une sans alcool', 3, 6, 3);
INSERT INTO opinion (resume_opinion, note_opinion, brewery_id, user_id) VALUES ('Brasserie exceptionnelle, grande variété', 5, 2, 3);
INSERT INTO opinion (resume_opinion, note_opinion, brewery_id, user_id) VALUES ('Brasserie innovante et courageuse', 4, 4, 4);
INSERT INTO opinion (resume_opinion, note_opinion, beer_id, user_id) VALUES ('Belle ambrée équilibrée', 4, 3, 4);

-- Images
INSERT INTO image (pathname_image, beer_id) VALUES ('/uploads/beers/mont_blanc_blonde.jpg', 1);
INSERT INTO image (pathname_image, beer_id) VALUES ('/uploads/beers/chimay_bleue.jpg', 2);
INSERT INTO image (pathname_image, beer_id) VALUES ('/uploads/beers/chimay_rouge.jpg', 3);
INSERT INTO image (pathname_image, beer_id) VALUES ('/uploads/beers/guinness.jpg', 4);
INSERT INTO image (pathname_image, beer_id) VALUES ('/uploads/beers/punk_ipa.jpg', 5);
INSERT INTO image (pathname_image, beer_id) VALUES ('/uploads/beers/nanny_state.jpg', 6);
INSERT INTO image (pathname_image, beer_id) VALUES ('/uploads/beers/meteor_blonde.jpg', 7);
INSERT INTO image (pathname_image, beer_id) VALUES ('/uploads/beers/meteor_blanche.jpg', 8);

-- Favoris
INSERT INTO add_to_favorite (user_id, beer_id) VALUES (1, 1);
INSERT INTO add_to_favorite (user_id, beer_id) VALUES (1, 4);
INSERT INTO add_to_favorite (user_id, beer_id) VALUES (2, 2);
INSERT INTO add_to_favorite (user_id, beer_id) VALUES (2, 4);
INSERT INTO add_to_favorite (user_id, beer_id) VALUES (3, 5);
INSERT INTO add_to_favorite (user_id, beer_id) VALUES (3, 6);
INSERT INTO add_to_favorite (user_id, beer_id) VALUES (4, 1);
INSERT INTO add_to_favorite (user_id, beer_id) VALUES (4, 7);
INSERT INTO add_to_favorite (user_id, beer_id) VALUES (6, 2);
INSERT INTO add_to_favorite (user_id, beer_id) VALUES (6, 5);
INSERT INTO add_to_favorite (user_id, beer_id) VALUES (6, 7);
INSERT INTO add_to_favorite (user_id, beer_id) VALUES (7, 1);
INSERT INTO add_to_favorite (user_id, beer_id) VALUES (7, 4);
INSERT INTO add_to_favorite (user_id, beer_id) VALUES (7, 6);
INSERT INTO add_to_favorite (user_id, beer_id) VALUES (7, 8);
INSERT INTO add_to_favorite (user_id, beer_id) VALUES (8, 3);
INSERT INTO add_to_favorite (user_id, beer_id) VALUES (8, 5);
INSERT INTO add_to_favorite (user_id, beer_id) VALUES (9, 1);
INSERT INTO add_to_favorite (user_id, beer_id) VALUES (9, 2);
INSERT INTO add_to_favorite (user_id, beer_id) VALUES (9, 4);
INSERT INTO add_to_favorite (user_id, beer_id) VALUES (9, 7);
INSERT INTO add_to_favorite (user_id, beer_id) VALUES (9, 8);
INSERT INTO add_to_favorite (user_id, beer_id) VALUES (10, 1);
INSERT INTO add_to_favorite (user_id, beer_id) VALUES (10, 3);
INSERT INTO add_to_favorite (user_id, beer_id) VALUES (10, 5);
INSERT INTO add_to_favorite (user_id, beer_id) VALUES (10, 6);

-- Ingrédients des bières
INSERT INTO contain (beer_id, ingredient_id) VALUES (1, 1);
INSERT INTO contain (beer_id, ingredient_id) VALUES (1, 2);
INSERT INTO contain (beer_id, ingredient_id) VALUES (1, 3);
INSERT INTO contain (beer_id, ingredient_id) VALUES (1, 4);
INSERT INTO contain (beer_id, ingredient_id) VALUES (2, 1);
INSERT INTO contain (beer_id, ingredient_id) VALUES (2, 2);
INSERT INTO contain (beer_id, ingredient_id) VALUES (2, 5);
INSERT INTO contain (beer_id, ingredient_id) VALUES (2, 4);
INSERT INTO contain (beer_id, ingredient_id) VALUES (3, 1);
INSERT INTO contain (beer_id, ingredient_id) VALUES (3, 2);
INSERT INTO contain (beer_id, ingredient_id) VALUES (3, 4);
INSERT INTO contain (beer_id, ingredient_id) VALUES (4, 1);
INSERT INTO contain (beer_id, ingredient_id) VALUES (4, 2);
INSERT INTO contain (beer_id, ingredient_id) VALUES (4, 8);
INSERT INTO contain (beer_id, ingredient_id) VALUES (4, 4);
INSERT INTO contain (beer_id, ingredient_id) VALUES (5, 1);
INSERT INTO contain (beer_id, ingredient_id) VALUES (5, 2);
INSERT INTO contain (beer_id, ingredient_id) VALUES (5, 4);
INSERT INTO contain (beer_id, ingredient_id) VALUES (6, 1);
INSERT INTO contain (beer_id, ingredient_id) VALUES (6, 2);
INSERT INTO contain (beer_id, ingredient_id) VALUES (6, 4);
INSERT INTO contain (beer_id, ingredient_id) VALUES (7, 1);
INSERT INTO contain (beer_id, ingredient_id) VALUES (7, 2);
INSERT INTO contain (beer_id, ingredient_id) VALUES (7, 4);
INSERT INTO contain (beer_id, ingredient_id) VALUES (8, 1);
INSERT INTO contain (beer_id, ingredient_id) VALUES (8, 6);
INSERT INTO contain (beer_id, ingredient_id) VALUES (8, 7);
INSERT INTO contain (beer_id, ingredient_id) VALUES (8, 4);