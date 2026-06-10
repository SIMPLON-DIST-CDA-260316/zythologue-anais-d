CREATE TABLE users(
   user_id SERIAL,
   firstname_user VARCHAR(50),
   lastname_user VARCHAR(50),
   nickname_user VARCHAR(50) NOT NULL,
   photo_profil_user VARCHAR(255),
   email_user VARCHAR(255) NOT NULL,
   password_user VARCHAR(255) NOT NULL,
   role_user VARCHAR(10) NOT NULL DEFAULT 'user',
   birth_date_user DATE NOT NULL,
   created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
   PRIMARY KEY(user_id),
   UNIQUE(nickname_user),
   UNIQUE(photo_profil_user),
   UNIQUE(email_user),
   CHECK(birth_date_user <= CURRENT_DATE - INTERVAL '18 years')
);

CREATE TABLE category(
   category_id SERIAL,
   name_category VARCHAR(50) NOT NULL,
   PRIMARY KEY(category_id)
);

CREATE TABLE brewery(
   brewery_id SERIAL,
   brewery_name VARCHAR(50) NOT NULL,
   brewery_country VARCHAR(50) NOT NULL,
   brewery_adress VARCHAR(255),
   brewery_photo_profil VARCHAR(255),
   PRIMARY KEY(brewery_id),
   UNIQUE(brewery_name),
   UNIQUE(brewery_photo_profil)
);

CREATE TABLE ingredient(
   ingredient_id SERIAL,
   ingredient_name VARCHAR(50) NOT NULL,
   PRIMARY KEY(ingredient_id)
);

CREATE TABLE beer(
   beer_id SERIAL,
   name_beer VARCHAR(50) NOT NULL,
   resume_beer TEXT,
   with_alcohol BOOLEAN NOT NULL DEFAULT true,
   rate_alcohol DECIMAL(4,1) NOT NULL,
   category_id INT,
   brewery_id INT NOT NULL,
   PRIMARY KEY(beer_id),
   UNIQUE(name_beer),
   CHECK(rate_alcohol >= 0 AND rate_alcohol <= 10),
   FOREIGN KEY(category_id) REFERENCES category(category_id) ON DELETE SET NULL,
   FOREIGN KEY(brewery_id) REFERENCES brewery(brewery_id) ON DELETE CASCADE
);

CREATE TABLE opinion(
   opinion_id SERIAL,
   resume_opinion TEXT,
   note_opinion INT NOT NULL,
   brewery_id INT,
   beer_id INT,
   user_id INT,
   PRIMARY KEY(opinion_id),
   CHECK(note_opinion >= 1 AND note_opinion <= 5),
   FOREIGN KEY(brewery_id) REFERENCES brewery(brewery_id) ON DELETE CASCADE,
   FOREIGN KEY(beer_id) REFERENCES beer(beer_id) ON DELETE CASCADE,
   FOREIGN KEY(user_id) REFERENCES users(user_id) ON DELETE SET NULL
);

CREATE TABLE image(
   image_id SERIAL,
   pathname_image VARCHAR(255) NOT NULL,
   beer_id INT NOT NULL,
   PRIMARY KEY(image_id),
   FOREIGN KEY(beer_id) REFERENCES beer(beer_id) ON DELETE CASCADE
);

CREATE TABLE contain(
   beer_id INT,
   ingredient_id INT,
   PRIMARY KEY(beer_id, ingredient_id),
   FOREIGN KEY(beer_id) REFERENCES beer(beer_id) ON DELETE CASCADE,
   FOREIGN KEY(ingredient_id) REFERENCES ingredient(ingredient_id) ON DELETE CASCADE
);

CREATE TABLE add_to_favorite(
   user_id INT,
   beer_id INT,
   PRIMARY KEY(user_id, beer_id),
   FOREIGN KEY(user_id) REFERENCES users(user_id) ON DELETE CASCADE,
   FOREIGN KEY(beer_id) REFERENCES beer(beer_id) ON DELETE CASCADE
);