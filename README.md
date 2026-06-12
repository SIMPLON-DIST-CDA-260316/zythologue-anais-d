# Zythologue — Base de données pour amateurs de bières artisanales

Application dédiée aux amateurs de bières artisanales permettant de découvrir des bières, 
consulter leurs caractéristiques et ingrédients, laisser des avis, gérer des favoris et des photos.

---

## Cloner le repo

```bash
git clone https://github.com/SIMPLON-DIST-CDA-260316/zythologue-anais-d.git
cd zythologue-anais-d
```

> Copiez le fichier `.env.example` et renommez-le `.env`, puis renseignez vos identifiants :
> ```bash
> cp .env.example .env
> ```

---

## Lancement de l'environnement Docker

Lancer PostgreSQL :
```bash
docker compose up -d
```

Vérifier que le conteneur fonctionne :
```bash
docker ps
```

Arrêter l'environnement :
```bash
docker compose stop
```

Supprimer l'environnement et les données :
```bash
docker compose down -v
```

---

## Connexion à la base via DBeaver

| Paramètre | Valeur |
|-----------|--------|
| Hôte | localhost |
| Port | 5433 |
| Base de données | zythologue |
| Utilisateur | voir le fichier `.env` |
| Mot de passe | voir le fichier `.env` |

---

## Ordre d'exécution des scripts SQL

Les scripts doivent être exécutés dans cet ordre :

1. `sql/01_create_schema.sql` — Création des tables et contraintes
2. `sql/02_seed.sql` — Insertion des données de test
3. `sql/03_queries.sql` — Requêtes SQL

---

## Hypothèses de modélisation

- Une bière appartient à exactement une brasserie
- Une bière appartient à exactement une catégorie
- Un utilisateur peut laisser un seul avis par bière ou par brasserie
- Un avis est lié soit à une bière, soit à une brasserie, jamais les deux en même temps
- Si un utilisateur supprime son compte, ses avis sont conservés mais anonymisés
- Si une bière est supprimée, ses images et ses avis sont supprimés en cascade
- Si une brasserie est supprimée, ses bières sont supprimées en cascade
- Les utilisateurs doivent avoir au moins 18 ans pour créer un compte
- Les mots de passe sont hashés en base de données