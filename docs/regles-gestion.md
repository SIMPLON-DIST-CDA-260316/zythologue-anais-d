# Règles de gestion

## Utilisateur

- Un utilisateur peut :
    - créer un compte
    - noter une bière
    - noter une brasserie
    - ajouter un seul avis à une bière
    - ajouter un seul avis à une brasserie
    - ajouter une bière en favori une seule fois
- Si un utilisateur supprime son compte, ses avis reste mais son pseudo sera remplacé par "compte utilisateur supprimé"
- Un utilisateur doit avoir au moins 18 ans pour créer un compte

### Administrateur
- Un administrateur peut : 
    - rajouter une bière
    - rajouter une brasserie
    - banir un utilisateur
    - supprimer un utilisateur
    - supprimer un avis


## Bière
- une bière peut :
    - avoir des photos
    - peut appartenir qu'à une brasserie
    - peut avoir plusieurs ingrédients
    - peut avoir qu'une seule catégorie
- si une bière est supprimée, toutes ses infos, avis, notes sont supprimés.

## Brasserie
- une brasserie peut avoir une ou plusieurs bières
- si une brasserie est supprimée, toutes ses bières sont supprimées ainsi que ses infos et ses avis

## Ingrédient
- un ingrédient peut être contenu dans plusieurs bières

## Avis
- un avis concerne une bière ou une brasserie mais un même avis ne peut pas concerner à la fois une bière et une brasserie en même temps.
- un avis n'est pas supprimé si un utilisateur qui l'a déposé a supprimé son compte

## Catégorie
- une catégorie peut exister sans être associée à une bière