# Mines-ParisTech - PSL

## MIG 2020 - L'Eau après la Mine

### Mini-Projet 1 - Hydrogéologie

#### Louison Rapin, Guillaume Vigne, Sophian Akkari, Tom Boezennec, Louis-Justin Tallot

#### Irina Sin, Vincent Lagneau, Sophie Guillon, Nicolas Seigneur

Ce *repository* GitHub va contenir le code HYTEC développé dans le cadre de ce mini-projet.

|Dossier|Contenu|
|-------|--------|
|`Modele_1`|Tout premier modèle développé pour se familiariser avec HYTEC, un carré traité en 1D|
|`Modele_2`|Un trapèze pour tester la géométrie 2D |
|`Modele_3`|On reproduit fidèlement la géométrie et la pente du terrain |
|`Modele_4`|On ajoute les résidus, avec un maillage Voronoï correct|
|`Modele_5`|On ajoute la bande de terre, presque jusqu'en haut|
|`Modele_6`|Tentative d'inclure de l'air au-dessus du terrain, pour pallier au fait que `boundary` est un segment |
|`Modele_7`|Modèle fonctionnel avec la pluie incorporée, sans le granite fracturé|
|`Modele_8`|Modèle 2D qui ne complile pas, pour tester le fonctionnement des charges|
|`Modele_9`|Tentative d'incorporer le granite fracturé, échec du maillage Voronoï|
|`Modele_10`|Modèle avancé avec le granite fracturé, et le nouveau mesh donné par `gmsh`|
|`Modele_11`|Modèle semblable à `Modele_1`,pour le test du nouveau mailleur|
|`Modele_Guillaume_25ans`|Modèle réalisé par Guillaume Vigne, sur une période de 25 ans, et le granite fracturé donné par Voronoï|
|`Modèle_Irina_1`|Modèle sans la zone de granite fracturé par Irina Sin |
|`Modèle_Irina_2`|Modèle par Irina Sin avec le nouveau mailleur, et une zone partielle de granite fracturé|
|`Test`|Fichiers de test, créés par Vincent Lagneau, pour le mailleur `vertex`|
|`Test_2`|Fichiers de test, créés par Vincent Lagneau, pour le mailleur `vertex`|
