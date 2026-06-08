# Dictionnaire de données

## Utilisateur

| Code mnémonique | Désignation | Type | Taille | Obligatoire / Facultatif | Règles métier |
|-----------------|-------------|------|--------|--------------------------|---------------|
| user_id | L'identifiant de l'utilisateur | INT | 10 | Obligatoire | Identifiant unique |
| name_user | Le nom de l'utilisateur | VARCHAR | 50 | Facultatif | |
| firstname_user | Le prénom de l'utilisateur | VARCHAR | 50 | Facultatif | |
| nickname_user | Le pseudo de l'utilisateur | VARCHAR | 50 | Obligatoire | Le pseudo doit être unique |
| photo_profil_user | La photo de profil de l'utilisateur | VARCHAR | 255 | Facultatif | |
| email_user | L'email de l'utilisateur | VARCHAR | 50 | Obligatoire | Doit être unique |
| password_user | Le mot de passe de l'utilisateur | VARCHAR | 255 | Obligatoire | Doit être hashé en BDD |
| role_user | Le rôle de l'utilisateur | BOOLEAN | | Obligatoire | false = utilisateur, true = administrateur |

## Bière

| Code mnémonique | Désignation | Type | Taille | Obligatoire / Facultatif | Règles métier |
|-----------------|-------------|------|--------|--------------------------|---------------|
| beer_id | L'identifiant de la bière | INT | 10 | Obligatoire | Identifiant unique |
| name_beer | Le nom de la bière | VARCHAR | 50 | Obligatoire | |
| resume_beer | La description de la bière | TEXT | | Facultatif | |
| with_alcohol | La bière contient ou non de l'alcool | BOOLEAN | | Obligatoire | Avec alcool par défaut |

## Catégorie

| Code mnémonique | Désignation | Type | Taille | Obligatoire / Facultatif | Règles métier |
|-----------------|-------------|------|--------|--------------------------|---------------|
| category_id | L'identifiant de la catégorie | INT | 10 | Obligatoire | Identifiant unique |
| name_category | Le nom de la catégorie | VARCHAR | 50 | Obligatoire | |

## Avis

| Code mnémonique | Désignation | Type | Taille | Obligatoire / Facultatif | Règles métier |
|-----------------|-------------|------|--------|--------------------------|---------------|
| opinion_id | L'identifiant de l'avis | INT | 10 | Obligatoire | Identifiant unique |
| resume_opinion | Le texte de l'avis | TEXT | | Facultatif | Doit être lié à une bière ou une brasserie, pas les deux |
| note_opinion | La note accompagnant l'avis | INT | | Obligatoire | Comprise entre 1 et 5 |

## Brasserie

| Code mnémonique | Désignation | Type | Taille | Obligatoire / Facultatif | Règles métier |
|-----------------|-------------|------|--------|--------------------------|---------------|
| brewery_id | L'identifiant de la brasserie | INT | 10 | Obligatoire | Identifiant unique |
| brewery_name | Le nom de la brasserie | VARCHAR | 50 | Obligatoire | Doit être unique |
| brewery_country | Le pays de la brasserie | VARCHAR | 50 | Obligatoire | |

## Image

| Code mnémonique | Désignation | Type | Taille | Obligatoire / Facultatif | Règles métier |
|-----------------|-------------|------|--------|--------------------------|---------------|
| image_id | L'identifiant de l'image | INT | 10 | Obligatoire | Identifiant unique |
| pathname_image | Le chemin de l'image | VARCHAR | 255 | Obligatoire | |

## Ingrédient

| Code mnémonique | Désignation | Type | Taille | Obligatoire / Facultatif | Règles métier |
|-----------------|-------------|------|--------|--------------------------|---------------|
| ingredient_id | L'identifiant de l'ingrédient | INT | 10 | Obligatoire | Identifiant unique |
| name_ingredient | Le nom de l'ingrédient | VARCHAR | 20 | Obligatoire | |

## Favori

| Code mnémonique | Désignation | Type | Taille | Obligatoire / Facultatif | Règles métier |
|-----------------|-------------|------|--------|--------------------------|---------------|
| favorite_id | L'identifiant du favori | INT | 10 | Obligatoire | Identifiant unique |