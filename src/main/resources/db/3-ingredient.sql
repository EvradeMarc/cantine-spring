---------
-- unite
------
INSERT INTO unite (id_unite, nom, abrev ) VALUES
 (  1, 'unité', 'u' ),
 (  2, 'kilogramme', 'kg' ),
 (  3, 'litre', 'l' );

ALTER TABLE unite  ALTER COLUMN id_unite  RESTART WITH 4;


-------
-- ingredient
-------

INSERT INTO ingredient (id_ingredient, nom, id_unite, quantite_stock, prix_unitaire, perissable, stockage) VALUES
(1,  'Quinoa',                2, 10.0,  8.40, false, 'A'),
(2,  'Tomate',                2, 20.0,  3.30, true,  'F'),
(3,  'Concombre',             2, 25.0,  1.50, true,  'F'),
(4,  'Feuille de menthe',     1,  2.0,  4.10, true,  'F'),
(5,  'Échalote',              2, 10.0,  1.50, false, 'A'),
(6,  'Oignon',                2, 20.0,  1.50, false, 'A'),
(7,  'Huile d''olive',        3,  5.0,  1.50, false, 'A'),
(8,  'Sel fin',               1,  5.0,  1.15, false, 'A'),
(9,  'Poivre moulu',          1,  2.0, 31.50, false, 'A'),
(10, 'Lentilles vertes',      2, 15.0,  2.50, false, 'A'),
(11, 'Carotte',               2, 20.0,  1.20, true,  'F'),
(12, 'Céleri',                2, 15.0,  1.80, true,  'F'),
(13, 'Ail',                   1, 10.0,  3.00, false, 'A'),
(14, 'Pomme de terre',        2, 30.0,  1.00, true,  'F'),
(15, 'Courgette',             2, 20.0,  2.00, true,  'F'),
(16, 'Poivron rouge',         2, 15.0,  2.50, true,  'F'),
(17, 'Champignon de Paris',   2, 10.0,  3.00, true,  'F'),
(18, 'Épinards frais',        2, 10.0,  2.80, true,  'F'),
(19, 'Fromage feta',          2,  5.0,  6.00, true,  'F'),
(20, 'Pois chiches',          2, 15.0,  2.20, false, 'A'),
(21, 'Yaourt nature',         3,  5.0,  2.00, true,  'F'),
(22, 'Farine de blé',         2, 25.0,  1.00, false, 'A'),
(23, 'Levure chimique',       1,  5.0, 15.00, false, 'A'),
(24, 'Lait',                  3, 10.0,  0.90, true,  'F'),
(25, 'Beurre',                2,  5.0,  7.00, true,  'F'),
(26, 'Sucre',                 1, 10.0,  1.20, false, 'A'),
(27, 'Chocolat noir',         2,  4.0, 18.00, false, 'A'),
(28, 'Noix',                  2,  3.0, 15.00, false, 'A'),
(29, 'Riz basmati',           2, 20.0,  2.50, false, 'A'),
(30, 'Lait de coco',          3,  6.0, 3.50, true,  'F'),
(31, 'Curry en poudre',       1,  2.0, 20.00, false, 'A'),
(32, 'Pâtes',                 2, 15.0,  1.50, false, 'A'),
(33, 'Basilic frais',         1,  2.0, 15.00, true,  'F'),
(34, 'Mozzarella',            2,  4.0, 10.00, true,  'F'),
(35, 'Sauce tomate',          3,  8.0,  2.00, false, 'A'),
(36, 'Haricots rouges',       2, 10.0,  2.80, false, 'A'),
(37, 'Maïs en grains',        2,  5.0,  1.50, false, 'A'),
(38, 'Avocat',                2,  8.0,  3.00, true,  'F'),
(39, 'Citron vert',           1, 10.0,  1.20, true,  'F'),
(40, 'Coriandre fraîche',     1,  2.0, 15.00, true,  'F'),
(41, 'Tofu',                  2,  5.0,  5.00, true,  'F'),
(42, 'Sauce soja',            3,  3.0,  6.00, false, 'A'),
(43, 'Gingembre frais',       1,  2.0, 12.00, true,  'F'),
(44, 'Nouilles de riz',       2, 10.0,  2.00, false, 'A'),
(45, 'Pâte de curry rouge',   1,  2.0, 25.00, false, 'A'),
(46, 'Lait concentré sucré',  3,  3.0,  3.00, false, 'A'),
(47, 'Aubergine',             2,  8.0,  2.50, true,  'F'),
(48, 'Betterave',             2, 10.0,  2.00, true,  'F'),
(49, 'Brocoli',               2,  8.0,  3.00, true,  'F'),
(50, 'Chou-fleur',            2,  8.0,  3.00, true,  'F'),
(51, 'Courge butternut',       2,  6.0,  2.00, true,  'F'),
(52, 'Persil frais',          1,  2.0, 10.00, true,  'F'),
(53, 'Ciboulette',            1,  1.0, 10.00, true,  'F'),
(54, 'Thym',                  1,  1.0, 12.00, true,  'F'),
(55, 'Romarin',               1,  1.0, 12.00, true,  'F'),
(56, 'Origan',                1,  1.0, 12.00, true,  'F'),
(57, 'Miso',                  3,  2.0,  4.50, false, 'A'),
(58, 'Sirop d''érable',       3,  2.0,  6.00, false, 'A'),
(59, 'Banane',                1, 15.0,  1.00, true,  'F'),
(60, 'Fraise',                1, 20.0,  1.50, true,  'F'),
(61, 'Kiwi',                  1, 10.0,  1.20, true,  'F'),
(62, 'Pamplemousse',          1,  8.0,  1.80, true,  'F'),
(63, 'Orange',                1, 12.0,  1.50, true,  'F'),
(64, 'Mûre',                  1, 10.0,  2.00, true,  'F'),
(65, 'Framboise',             1, 12.0,  2.00, true,  'F'),
(66, 'Myrtille',              1, 15.0,  2.50, true,  'F'),
(67, 'Vanille',               1,  1.0, 20.00, false, 'A'),
(68, 'Cannelle',              1,  1.0, 15.00, false, 'A'),
(69, 'Muscade',               1,  1.0, 15.00, false, 'A'),
(70, 'Extrait de citron',     3,  1.0, 10.00, false, 'A'),
(71, 'Cerise',                1, 10.0,  3.00, true, 'F'),
(72, 'Mascarpone végétalien', 2, 2.0, 12.00, true, 'F'),
(73, 'Amande',                2, 5.0, 15.00, true, 'F'),
(74, 'Noisette',              2, 5.0, 14.00, true, 'F'),
(75, 'Pistache',              2, 3.0, 18.00, true, 'F'),
(76, 'Cresson',               1, 2.0,  5.00, true, 'F'),
(77, 'Raisins secs',          1, 2.0,  4.00, false, 'A'),
(78, 'Biscuit cuillère',      1, 20.0, 0.50, true, 'F'),
(79, 'Chocolat blanc',        2, 4.0, 20.00, false, 'A'),
(80, 'Crème végétale',        3, 5.0,  3.00, true, 'F'),
(81, 'Asperge',               2,  5.0, 3.00,  true,  'F'),
(82, 'Fenouil',               2,  4.0, 2.50,  true,  'F'),
(83, 'Haricots verts',        2,  6.0, 2.00,  true,  'F'),
(84, 'Tomates séchées',       2,  2.0, 6.00,  false, 'A'),
(85, 'Parmesan',              2,  3.0, 8.00,  true,  'F'),
(86, 'Melon',                 1, 10.0, 2.50,  true,  'F'),
(87, 'Pomme',                 1, 15.0, 1.50,  true,  'F'),
(88, 'Pomme verte',           1, 15.0, 1.80,  true,  'F'),
(89, 'Petits pois',           2,  5.0, 2.20,  true,  'F'),
(90, 'Haricots noirs',        2,  6.0, 2.80,  false, 'A'),
(91, 'Ricotta',               2,  4.0, 4.50,  true,  'F'),
(92, 'Gnocchis',              2,  5.0, 3.50,  false, 'A'),
(93, 'Riz arborio',           2,  8.0, 3.00,  false, 'A'),
(94, 'Fromage blanc',         2,  4.0, 3.50,  true,  'F'),
(95, 'Mangue',                1,  8.0, 2.50,  true,  'F'),
(96, 'Poire',                 1, 10.0, 2.00,  true,  'F'),
(97, 'Pois cassés',           2,  8.0, 2.80,  false, 'A'),
(98, 'Chou rouge',            2,  8.0, 2.83,  false, 'A'),
(99, 'Roquette',              2,  2.0, 2.80,  false, 'A'),
(100, 'Mascarpone',           2,  1.2, 18.00,  false, 'A');

ALTER TABLE ingredient  ALTER COLUMN id_ingredient RESTART WITH 101;


-------
-- plat_ingredient
-------

------------------------
-- 1. Pour les Entrées (id_plat 1 à 30)
------------------------

-- Plat 1 : Salade de quinoa aux légumes
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(1, 1, 0.300),   -- Quinoa
(1, 2, 0.200),   -- Tomate
(1, 3, 0.150),   -- Concombre
(1, 4, 0.010),   -- Feuille de menthe
(1, 7, 0.010),   -- Huile d'olive
(1, 8, 0.005),   -- Sel fin
(1, 9, 0.002);   -- Poivre moulu

-- Plat 2 : Salade de tomates et basilic
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(2, 2, 0.400),   -- Tomate
(2, 33, 0.010),  -- Basilic frais
(2, 7, 0.010),   -- Huile d'olive
(2, 8, 0.005),   -- Sel fin
(2, 9, 0.002);   -- Poivre moulu

-- Plat 3 : Soupe froide de concombre
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(3, 3, 0.400),   -- Concombre
(3, 6, 0.100),   -- Oignon
(3, 7, 0.010),   -- Huile d'olive
(3, 8, 0.005);   -- Sel fin

-- Plat 4 : Velouté de carottes et gingembre
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(4, 11, 0.300),  -- Carotte
(4, 6, 0.100),   -- Oignon
(4, 43, 0.010),  -- Gingembre frais
(4, 7, 0.010),   -- Huile d'olive
(4, 8, 0.005);   -- Sel fin

-- Plat 5 : Salade d’asperges et pois
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(5, 81, 0.300),  -- Asperge
(5, 20, 0.300),  -- Pois chiches
(5, 7, 0.010),   -- Huile d'olive
(5, 8, 0.005);   -- Sel fin

-- Plat 6 : Taboulé aux herbes fraîches
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(6, 1, 0.200),   -- Quinoa
(6, 2, 0.200),   -- Tomate
(6, 3, 0.150),   -- Concombre
(6, 33, 0.010),  -- Basilic frais (ou persil frais si disponible)
(6, 7, 0.010),   -- Huile d'olive
(6, 8, 0.005);   -- Sel fin

-- Plat 7 : Carpaccio de betterave et orange
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(7, 48, 0.300),  -- Betterave
(7, 63, 0.200),  -- Orange
(7, 7, 0.010),   -- Huile d'olive
(7, 8, 0.005);   -- Sel fin

-- Plat 8 : Salade de roquette et noix
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(8, 99, 0.100),  -- Roquette
(8, 28, 0.050),  -- Noix
(8, 7, 0.010),   -- Huile d'olive
(8, 8, 0.005);   -- Sel fin

-- Plat 9 : Salade de lentilles et carottes râpées
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(9, 10, 0.300),  -- Lentilles vertes
(9, 11, 0.200),  -- Carotte
(9, 7, 0.010),   -- Huile d'olive
(9, 8, 0.005);   -- Sel fin

-- Plat 10 : Salade de pois cassés
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(10, 97, 0.300), -- Pois cassés
(10, 2, 0.250),  -- Tomate
(10, 7, 0.010),  -- Huile d'olive
(10, 8, 0.005);  -- Sel fin

-- Plat 11 : Salade de fenouil et agrumes
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(11, 82, 0.200), -- Fenouil
(11, 63, 0.200), -- Orange
(11, 39, 0.100), -- Citron vert
(11, 7, 0.010),  -- Huile d'olive
(11, 8, 0.005);  -- Sel fin

-- Plat 12 : Salade de concombre, menthe et yaourt
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(12, 3, 0.300),  -- Concombre
(12, 4, 0.010),  -- Feuille de menthe
(12, 21, 0.150), -- Yaourt nature
(12, 8, 0.005),  -- Sel fin
(12, 9, 0.002);  -- Poivre moulu

-- Plat 13 : Salade de radis et citron
-- (Radis n'étant pas présent, on met l'accent sur le citron et l'assaisonnement)
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(13, 39, 0.100), -- Citron vert
(13, 6, 0.100),  -- Oignon
(13, 7, 0.010),  -- Huile d'olive
(13, 8, 0.005);  -- Sel fin

-- Plat 14 : Salade de pois chiches, tomates et concombre
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(14, 20, 0.300), -- Pois chiches
(14, 2, 0.250),  -- Tomate
(14, 3, 0.150),  -- Concombre
(14, 7, 0.010),  -- Huile d'olive
(14, 8, 0.005);  -- Sel fin

-- Plat 15 : Soupe de courgettes à la menthe
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(15, 15, 0.300), -- Courgette
(15, 4, 0.010),  -- Feuille de menthe
(15, 6, 0.100),  -- Oignon
(15, 7, 0.010),  -- Huile d'olive
(15, 8, 0.005);  -- Sel fin

-- Plat 16 : Salade de betteraves et feta
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(16, 48, 0.300), -- Betterave
(16, 19, 0.150), -- Fromage feta
(16, 7, 0.010),  -- Huile d'olive
(16, 8, 0.005);  -- Sel fin

-- Plat 17 : Soupe de légumes verts
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(17, 18, 0.300), -- Épinards frais
(17, 12, 0.200), -- Céleri
(17, 6, 0.100),  -- Oignon
(17, 7, 0.010),  -- Huile d'olive
(17, 8, 0.005);  -- Sel fin

-- Plat 18 : Salade de haricots verts et tomates séchées
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(18, 83, 0.300), -- Haricots verts
(18, 84, 0.200), -- Tomates séchées
(18, 7, 0.010),  -- Huile d'olive
(18, 8, 0.005);  -- Sel fin

-- Plat 19 : Soupe de poivrons grillés
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(19, 16, 0.300), -- Poivron rouge
(19, 6, 0.100),  -- Oignon
(19, 13, 0.020), -- Ail
(19, 7, 0.010),  -- Huile d'olive
(19, 8, 0.005);  -- Sel fin

-- Plat 20 : Salade de courgettes crues et parmesan
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(20, 15, 0.300), -- Courgette
(20, 85, 0.150), -- Parmesan
(20, 7, 0.010),  -- Huile d'olive
(20, 8, 0.005);  -- Sel fin

-- Plat 21 : Salade de cresson aux agrumes
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(21, 76, 0.100), -- Cresson
(21, 63, 0.200), -- Orange
(21, 39, 0.100), -- Citron vert
(21, 7, 0.010),  -- Huile d'olive
(21, 8, 0.005);  -- Sel fin

-- Plat 22 : Soupe froide de melon et menthe
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(22, 86, 0.300), -- Melon
(22, 4, 0.010),  -- Feuille de menthe
(22, 7, 0.010),  -- Huile d'olive
(22, 8, 0.005);  -- Sel fin

-- Plat 23 : Salade de carottes râpées et raisins secs
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(23, 11, 0.300), -- Carotte
(23, 77, 0.100), -- Raisins secs
(23, 7, 0.010),  -- Huile d'olive
(23, 8, 0.005);  -- Sel fin

-- Plat 24 : Soupe de radis et pomme
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(24, 87, 0.300), -- Pomme
(24, 6, 0.100),  -- Oignon
(24, 7, 0.010),  -- Huile d'olive
(24, 8, 0.005);  -- Sel fin

-- Plat 25 : Salade de chou rouge et pomme verte
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(25, 98, 0.300), -- Chou rouge
(25, 88, 0.200), -- Pomme verte
(25, 7, 0.010),  -- Huile d'olive
(25, 8, 0.005);  -- Sel fin

-- Plat 26 : Salade de petits pois et menthe
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(26, 89, 0.300), -- Petits pois
(26, 4, 0.010),  -- Feuille de menthe
(26, 7, 0.010),  -- Huile d'olive
(26, 8, 0.005);  -- Sel fin

-- Plat 27 : Soupe de brocoli froid
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(27, 49, 0.300), -- Brocoli
(27, 6, 0.100),  -- Oignon
(27, 7, 0.010),  -- Huile d'olive
(27, 8, 0.005);  -- Sel fin

-- Plat 28 : Salade de courgette et menthe
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(28, 15, 0.300), -- Courgette
(28, 4, 0.010),  -- Feuille de menthe
(28, 7, 0.010),  -- Huile d'olive
(28, 8, 0.005);  -- Sel fin

-- Plat 29 : Velouté d’aubergine froide
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(29, 47, 0.300), -- Aubergine
(29, 6, 0.100),  -- Oignon
(29, 7, 0.010),  -- Huile d'olive
(29, 8, 0.005);  -- Sel fin

-- Plat 30 : Salade de poivrons colorés
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(30, 16, 0.300), -- Poivron rouge
(30, 2, 0.200),  -- Tomate
(30, 7, 0.010),  -- Huile d'olive
(30, 8, 0.005);  -- Sel fin

------------------------
-- 2. Pour les Plats principaux (id_plat 31 à 80)
------------------------

-- Plat 31 : Ratatouille
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(31, 2, 0.500),   -- Tomate
(31, 15, 0.300),  -- Courgette
(31, 47, 0.300),  -- Aubergine
(31, 16, 0.200),  -- Poivron rouge
(31, 6, 0.100),   -- Oignon
(31, 13, 0.020),  -- Ail
(31, 7, 0.010),   -- Huile d'olive
(31, 8, 0.005),   -- Sel fin
(31, 9, 0.002);   -- Poivre moulu

-- Plat 32 : Quiche aux légumes
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(32, 6, 0.100),   -- Oignon
(32, 15, 0.200),  -- Courgette
(32, 16, 0.150),  -- Poivron rouge
(32, 2, 0.250),   -- Tomate
(32, 34, 0.150),  -- Mozzarella
(32, 8, 0.005),   -- Sel fin
(32, 9, 0.002);   -- Poivre moulu

-- Plat 33 : Lasagnes végétariennes
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(33, 35, 0.300),  -- Sauce tomate
(33, 15, 0.200),  -- Courgette
(33, 47, 0.200),  -- Aubergine
(33, 6, 0.100),   -- Oignon
(33, 19, 0.150),  -- Fromage feta
(33, 33, 0.010),  -- Basilic frais
(33, 8, 0.005),   -- Sel fin
(33, 9, 0.002);   -- Poivre moulu

-- Plat 34 : Curry de légumes
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(34, 11, 0.200),  -- Carotte
(34, 15, 0.200),  -- Courgette
(34, 16, 0.150),  -- Poivron rouge
(34, 6, 0.100),   -- Oignon
(34, 30, 0.300),  -- Lait de coco
(34, 31, 0.010),  -- Curry en poudre
(34, 13, 0.020),  -- Ail
(34, 7, 0.010),   -- Huile d'olive
(34, 8, 0.005),   -- Sel fin
(34, 9, 0.002);   -- Poivre moulu

-- Plat 35 : Chili sin carne
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(35, 36, 0.250),  -- Haricots rouges
(35, 20, 0.200),  -- Pois chiches
(35, 2, 0.300),   -- Tomate
(35, 6, 0.100),   -- Oignon
(35, 13, 0.020),  -- Ail
(35, 16, 0.150),  -- Poivron rouge
(35, 7, 0.010),   -- Huile d'olive
(35, 8, 0.005),   -- Sel fin
(35, 9, 0.002);   -- Poivre moulu

-- Plat 36 : Tofu sauté aux légumes
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(36, 41, 0.200),  -- Tofu
(36, 6, 0.100),   -- Oignon
(36, 16, 0.150),  -- Poivron rouge
(36, 15, 0.150),  -- Courgette
(36, 42, 0.020),  -- Sauce soja
(36, 43, 0.010),  -- Gingembre frais
(36, 13, 0.020),  -- Ail
(36, 7, 0.010),   -- Huile d'olive
(36, 8, 0.005),   -- Sel fin
(36, 9, 0.002);   -- Poivre moulu

-- Plat 37 : Burger végétarien aux haricots noirs
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(37, 90, 0.300),  -- Haricots noirs
(37, 6, 0.100),   -- Oignon
(37, 13, 0.020),  -- Ail
(37, 7, 0.010),   -- Huile d'olive
(37, 8, 0.005),   -- Sel fin
(37, 9, 0.002);   -- Poivre moulu

-- Plat 38 : Pâtes aux épinards et ricotta
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(38, 32, 0.300),  -- Pâtes
(38, 18, 0.200),  -- Épinards frais
(38, 91, 0.150),  -- Ricotta
(38, 8, 0.005),   -- Sel fin
(38, 9, 0.002);   -- Poivre moulu

-- Plat 39 : Falafels
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(39, 20, 0.350),  -- Pois chiches
(39, 13, 0.020),  -- Ail
(39, 7, 0.010),   -- Huile d'olive
(39, 8, 0.005),   -- Sel fin
(39, 9, 0.002);   -- Poivre moulu

-- Plat 40 : Couscous aux légumes
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(40, 2, 0.300),   -- Tomate
(40, 14, 0.400),  -- Pomme de terre
(40, 15, 0.300),  -- Courgette
(40, 12, 0.200),  -- Céleri
(40, 7, 0.010),   -- Huile d'olive
(40, 8, 0.005),   -- Sel fin
(40, 9, 0.002);   -- Poivre moulu

-- Plat 41 : Soupe de lentilles corail
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(41, 10, 0.300),  -- Lentilles vertes
(41, 11, 0.200),  -- Carotte
(41, 6, 0.100),   -- Oignon
(41, 13, 0.020),  -- Ail
(41, 7, 0.010),   -- Huile d'olive
(41, 8, 0.005),   -- Sel fin
(41, 9, 0.002);   -- Poivre moulu

-- Plat 42 : Tian de légumes
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(42, 2, 0.250),   -- Tomate
(42, 15, 0.250),  -- Courgette
(42, 16, 0.200),  -- Poivron rouge
(42, 6, 0.100),   -- Oignon
(42, 13, 0.020),  -- Ail
(42, 7, 0.010),   -- Huile d'olive
(42, 8, 0.005),   -- Sel fin
(42, 9, 0.002);   -- Poivre moulu

-- Plat 43 : Gnocchis à la sauce tomate
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(43, 92, 0.300),  -- Gnocchis
(43, 35, 0.300),  -- Sauce tomate
(43, 6, 0.100),   -- Oignon
(43, 7, 0.010),   -- Huile d'olive
(43, 8, 0.005),   -- Sel fin
(43, 9, 0.002);   -- Poivre moulu

-- Plat 44 : Pâtes au pesto de basilic
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(44, 32, 0.300),  -- Pâtes
(44, 33, 0.010),  -- Basilic frais
(44, 25, 0.050),  -- Beurre
(44, 7, 0.010),   -- Huile d'olive
(44, 8, 0.005),   -- Sel fin
(44, 9, 0.002);   -- Poivre moulu

-- Plat 45 : Galettes de légumes
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(45, 11, 0.200),  -- Carotte
(45, 15, 0.200),  -- Courgette
(45, 6, 0.100),   -- Oignon
(45, 7, 0.010),   -- Huile d'olive
(45, 8, 0.005),   -- Sel fin
(45, 9, 0.002);   -- Poivre moulu

-- Plat 46 : Wrap aux légumes grillés
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(46, 2, 0.200),   -- Tomate
(46, 15, 0.200),  -- Courgette
(46, 16, 0.150),  -- Poivron rouge
(46, 6, 0.100),   -- Oignon
(46, 7, 0.010),   -- Huile d'olive
(46, 8, 0.005);   -- Sel fin

-- Plat 47 : Moussaka végétarienne
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(47, 47, 0.300),  -- Aubergine
(47, 15, 0.200),  -- Courgette
(47, 6, 0.100),   -- Oignon
(47, 13, 0.020),  -- Ail
(47, 7, 0.010),   -- Huile d'olive
(47, 8, 0.005),   -- Sel fin
(47, 9, 0.002);   -- Poivre moulu

-- Plat 48 : Pizza aux légumes
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(48, 2, 0.250),   -- Tomate (pour la sauce)
(48, 15, 0.200),  -- Courgette
(48, 16, 0.150),  -- Poivron rouge
(48, 6, 0.100),   -- Oignon
(48, 34, 0.150),  -- Mozzarella
(48, 8, 0.005),   -- Sel fin
(48, 9, 0.002);   -- Poivre moulu

-- Plat 49 : Gratin de courgettes et tomates
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(49, 15, 0.300),  -- Courgette
(49, 2, 0.300),   -- Tomate
(49, 25, 0.050),  -- Beurre
(49, 8, 0.005),   -- Sel fin
(49, 9, 0.002);   -- Poivre moulu

-- Plat 50 : Poivrons farcis au riz
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(50, 16, 0.200),  -- Poivron rouge
(50, 29, 0.300),  -- Riz basmati
(50, 6, 0.100),   -- Oignon
(50, 13, 0.020),  -- Ail
(50, 7, 0.010),   -- Huile d'olive
(50, 8, 0.005);   -- Sel fin

-- Plat 51 : Tajine de légumes
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(51, 11, 0.200),  -- Carotte
(51, 14, 0.300),  -- Pomme de terre
(51, 15, 0.200),  -- Courgette
(51, 2, 0.250),   -- Tomate
(51, 7, 0.010),   -- Huile d'olive
(51, 8, 0.005),   -- Sel fin
(51, 9, 0.002);   -- Poivre moulu

-- Plat 52 : Pâtes primavera
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(52, 32, 0.300),  -- Pâtes
(52, 2, 0.200),   -- Tomate
(52, 15, 0.200),  -- Courgette
(52, 16, 0.150),  -- Poivron rouge
(52, 6, 0.100),   -- Oignon
(52, 8, 0.005),   -- Sel fin
(52, 9, 0.002);   -- Poivre moulu

-- Plat 53 : Salade de pois chiches et tomates
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(53, 20, 0.300),  -- Pois chiches
(53, 2, 0.250),   -- Tomate
(53, 7, 0.010),   -- Huile d'olive
(53, 8, 0.005),   -- Sel fin
(53, 9, 0.002);   -- Poivre moulu

-- Plat 54 : Curry de pois chiches (Chana Masala)
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(54, 20, 0.300),  -- Pois chiches
(54, 2, 0.250),   -- Tomate
(54, 6, 0.100),   -- Oignon
(54, 13, 0.020),  -- Ail
(54, 31, 0.010),  -- Curry en poudre
(54, 7, 0.010),   -- Huile d'olive
(54, 8, 0.005);   -- Sel fin

-- Plat 55 : Buddha bowl aux légumes
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(55, 29, 0.300),  -- Riz basmati
(55, 2, 0.200),   -- Tomate
(55, 15, 0.200),  -- Courgette
(55, 11, 0.150),  -- Carotte
(55, 18, 0.150),  -- Épinards frais
(55, 7, 0.010);   -- Huile d'olive

-- Plat 56 : Risotto aux champignons
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(56, 93, 0.300),  -- Riz arborio
(56, 17, 0.300),  -- Champignon de Paris
(56, 6, 0.100),   -- Oignon
(56, 7, 0.010),   -- Huile d'olive
(56, 25, 0.050),  -- Beurre
(56, 8, 0.005),   -- Sel fin
(56, 9, 0.002);   -- Poivre moulu

-- Plat 57 : Crêpes aux épinards et ricotta
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(57, 22, 0.200),  -- Farine de blé
(57, 24, 0.200),  -- Lait
(57, 18, 0.200),  -- Épinards frais
(57, 91, 0.150),  -- Ricotta
(57, 8, 0.005),   -- Sel fin
(57, 9, 0.002);   -- Poivre moulu

-- Plat 58 : Pâtes à la puttanesca végétarienne
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(58, 32, 0.300),  -- Pâtes
(58, 2, 0.250),   -- Tomate
(58, 13, 0.020),  -- Ail
(58, 7, 0.010),   -- Huile d'olive
(58, 8, 0.005),   -- Sel fin
(58, 9, 0.002);   -- Poivre moulu

-- Plat 59 : Boulettes de lentilles
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(59, 10, 0.300),  -- Lentilles vertes
(59, 13, 0.020),  -- Ail
(59, 6, 0.100),   -- Oignon
(59, 7, 0.010),   -- Huile d'olive
(59, 8, 0.005),   -- Sel fin
(59, 9, 0.002);   -- Poivre moulu

-- Plat 60 : Salade de pâtes méditerranéenne
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(60, 32, 0.300),  -- Pâtes
(60, 2, 0.200),   -- Tomate
(60, 15, 0.200),  -- Courgette
(60, 6, 0.100),   -- Oignon
(60, 8, 0.005),   -- Sel fin
(60, 9, 0.002);   -- Poivre moulu

-- Plat 61 : Tofu mariné grillé
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(61, 41, 0.200),  -- Tofu
(61, 42, 0.020),  -- Sauce soja
(61, 13, 0.020),  -- Ail
(61, 7, 0.010),   -- Huile d'olive
(61, 8, 0.005),   -- Sel fin
(61, 9, 0.002);   -- Poivre moulu

-- Plat 62 : Soupe minestrone
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(62, 2, 0.300),   -- Tomate
(62, 15, 0.200),  -- Courgette
(62, 6, 0.150),   -- Oignon
(62, 12, 0.100),  -- Céleri
(62, 13, 0.020),  -- Ail
(62, 7, 0.010),   -- Huile d'olive
(62, 8, 0.005),   -- Sel fin
(62, 9, 0.002);   -- Poivre moulu

-- Plat 63 : Curry de lentilles (Dal)
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(63, 10, 0.300),  -- Lentilles vertes
(63, 11, 0.200),  -- Carotte
(63, 6, 0.100),   -- Oignon
(63, 13, 0.020),  -- Ail
(63, 31, 0.010),  -- Curry en poudre
(63, 7, 0.010),   -- Huile d'olive
(63, 8, 0.005),   -- Sel fin
(63, 9, 0.002);   -- Poivre moulu

-- Plat 64 : Tempura de légumes
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(64, 15, 0.300),  -- Courgette
(64, 16, 0.200),  -- Poivron rouge
(64, 11, 0.150),  -- Carotte
(64, 7, 0.010),   -- Huile d'olive
(64, 8, 0.005);   -- Sel fin

-- Plat 65 : Sandwich au houmous et légumes
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(65, 20, 0.300),  -- Pois chiches
(65, 6, 0.100),   -- Oignon
(65, 13, 0.020),  -- Ail
(65, 7, 0.010),   -- Huile d'olive
(65, 8, 0.005);   -- Sel fin

-- Plat 66 : Curry thaï de légumes
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(66, 15, 0.200),  -- Courgette
(66, 16, 0.150),  -- Poivron rouge
(66, 6, 0.100),   -- Oignon
(66, 30, 0.300),  -- Lait de coco
(66, 31, 0.010),  -- Curry en poudre
(66, 7, 0.010),   -- Huile d'olive
(66, 8, 0.005);   -- Sel fin

-- Plat 67 : Gratin dauphinois végétarien
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(67, 14, 0.400),  -- Pomme de terre
(67, 24, 0.200),  -- Lait
(67, 25, 0.050),  -- Beurre
(67, 8, 0.005),   -- Sel fin
(67, 9, 0.002);   -- Poivre moulu

-- Plat 68 : Pâtes à la crème de poivrons
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(68, 32, 0.300),  -- Pâtes
(68, 16, 0.200),  -- Poivron rouge
(68, 7, 0.010),   -- Huile d'olive
(68, 8, 0.005),   -- Sel fin
(68, 9, 0.002);   -- Poivre moulu

-- Plat 69 : Curry de tofu et légumes
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(69, 41, 0.200),  -- Tofu
(69, 15, 0.200),  -- Courgette
(69, 16, 0.150),  -- Poivron rouge
(69, 6, 0.100),   -- Oignon
(69, 30, 0.300),  -- Lait de coco
(69, 31, 0.010),  -- Curry en poudre
(69, 7, 0.010),   -- Huile d'olive
(69, 8, 0.005);   -- Sel fin

-- Plat 70 : Brochettes de légumes grillés
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(70, 15, 0.300),  -- Courgette
(70, 16, 0.200),  -- Poivron rouge
(70, 6, 0.100),   -- Oignon
(70, 7, 0.010),   -- Huile d'olive
(70, 8, 0.005);   -- Sel fin

-- Plat 71 : Burger de haricots rouges
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(71, 36, 0.300),  -- Haricots rouges
(71, 6, 0.100),   -- Oignon
(71, 13, 0.020),  -- Ail
(71, 7, 0.010),   -- Huile d'olive
(71, 8, 0.005),   -- Sel fin
(71, 9, 0.002);   -- Poivre moulu

-- Plat 72 : Gaspacho andalou
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(72, 2, 0.300),   -- Tomate
(72, 3, 0.200),   -- Concombre
(72, 6, 0.100),   -- Oignon
(72, 7, 0.010),   -- Huile d'olive
(72, 8, 0.005),   -- Sel fin
(72, 9, 0.002);   -- Poivre moulu

-- Plat 73 : Gratin de chou-fleur
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(73, 50, 0.400),  -- Chou-fleur
(73, 25, 0.050),  -- Beurre
(73, 8, 0.005),   -- Sel fin
(73, 9, 0.002);   -- Poivre moulu

-- Plat 74 : Tagliatelles aux champignons
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(74, 32, 0.300),  -- Tagliatelles (Pâtes)
(74, 17, 0.300),  -- Champignon de Paris
(74, 6, 0.100),   -- Oignon
(74, 7, 0.010),   -- Huile d'olive
(74, 8, 0.005),   -- Sel fin
(74, 9, 0.002);   -- Poivre moulu

-- Plat 75 : Poêlée de légumes méditerranéens
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(75, 2, 0.250),   -- Tomate
(75, 15, 0.250),  -- Courgette
(75, 16, 0.200),  -- Poivron rouge
(75, 6, 0.100),   -- Oignon
(75, 7, 0.010),   -- Huile d'olive
(75, 8, 0.005);   -- Sel fin

-- Plat 76 : Ragoût de légumes
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(76, 2, 0.300),   -- Tomate
(76, 15, 0.250),  -- Courgette
(76, 11, 0.200),  -- Carotte
(76, 6, 0.100),   -- Oignon
(76, 7, 0.010),   -- Huile d'olive
(76, 8, 0.005);   -- Sel fin

-- Plat 77 : Curry d’aubergines
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(77, 47, 0.300),  -- Aubergine
(77, 6, 0.100),   -- Oignon
(77, 13, 0.020),  -- Ail
(77, 31, 0.010),  -- Curry en poudre
(77, 7, 0.010),   -- Huile d'olive
(77, 8, 0.005);   -- Sel fin

-- Plat 78 : Salade de légumes rôtis
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(78, 2, 0.300),   -- Tomate
(78, 15, 0.250),  -- Courgette
(78, 6, 0.100),   -- Oignon
(78, 7, 0.010),   -- Huile d'olive
(78, 8, 0.005);   -- Sel fin

-- Plat 79 : Galettes de quinoa
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(79, 1, 0.300),   -- Quinoa
(79, 6, 0.100),   -- Oignon
(79, 13, 0.020),  -- Ail
(79, 7, 0.010),   -- Huile d'olive
(79, 8, 0.005);   -- Sel fin

-- Plat 80 : Tofu à l’asiatique
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(80, 41, 0.200),  -- Tofu
(80, 42, 0.020),  -- Sauce soja
(80, 43, 0.010),  -- Gingembre frais
(80, 13, 0.020),  -- Ail
(80, 7, 0.010),   -- Huile d'olive
(80, 8, 0.005);   -- Sel fin

------------------------
-- 3. Pour les Desserts (id_plat 81 à 100)
------------------------

-- Plat 81 : Salade de fruits frais
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(81, 60, 0.300),  -- Fraise
(81, 61, 0.300),  -- Kiwi
(81, 63, 0.300),  -- Orange
(81, 62, 0.300);  -- Pamplemousse

-- Plat 82 : Mousse au chocolat végétalienne
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(82, 27, 0.200),  -- Chocolat noir
(82, 26, 0.100),  -- Sucre
(82, 30, 0.200);  -- Lait de coco

-- Plat 83 : Brownies végétaliens
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(83, 22, 0.300),  -- Farine de blé
(83, 26, 0.150),  -- Sucre
(83, 27, 0.200),  -- Chocolat noir
(83, 25, 0.050);  -- Beurre

-- Plat 84 : Tarte aux pommes végétarienne
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(84, 87, 0.300),  -- Pomme
(84, 24, 0.200),  -- Lait
(84, 22, 0.200),  -- Farine de blé
(84, 26, 0.100),  -- Sucre
(84, 25, 0.050);  -- Beurre

-- Plat 85 : Crumble aux fruits rouges
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(85, 60, 0.300),  -- Fraise
(85, 64, 0.200),  -- Mûre
(85, 65, 0.200),  -- Framboise
(85, 26, 0.100),  -- Sucre
(85, 22, 0.200);  -- Farine de blé

-- Plat 86 : Gâteau à l'orange
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(86, 63, 0.300),  -- Orange
(86, 26, 0.150),  -- Sucre
(86, 22, 0.200),  -- Farine de blé
(86, 25, 0.050);  -- Beurre

-- Plat 87 : Cheesecake végétalien
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(87, 21, 0.300),  -- Yaourt nature
(87, 26, 0.150),  -- Sucre
(87, 22, 0.200),  -- Farine de blé
(87, 25, 0.050),  -- Beurre
(87, 72, 0.150);  -- Mascarpone végétalien

-- Plat 88 : Panna cotta au lait de coco
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(88, 30, 0.300),  -- Lait de coco
(88, 26, 0.150),  -- Sucre
(88, 57, 0.010),  -- Miso
(88, 70, 0.005);  -- Extrait de citron

-- Plat 89 : Glace à la banane
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(89, 59, 0.400),  -- Banane
(89, 26, 0.100);  -- Sucre

-- Plat 90 : Sorbet à la mangue
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(90, 95, 0.300),  -- Mangue
(90, 26, 0.100);  -- Sucre

-- Plat 91 : Tiramisu végétarien
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(91, 100, 0.300), -- Mascarpone
(91, 22, 0.200),  -- Farine de blé (pour biscuit)
(91, 26, 0.150),  -- Sucre
(91, 8, 0.005);   -- Sel fin

-- Plat 92 : Clafoutis aux cerises
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(92, 71, 0.300),  -- Cerise
(92, 22, 0.200),  -- Farine de blé
(92, 24, 0.200),  -- Lait
(92, 26, 0.150);  -- Sucre

-- Plat 93 : Moelleux au chocolat
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(93, 27, 0.300),  -- Chocolat noir
(93, 26, 0.150),  -- Sucre
(93, 22, 0.200),  -- Farine de blé
(93, 25, 0.050);  -- Beurre

-- Plat 94 : Macarons végétaliens
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(94, 22, 0.200),  -- Farine de blé
(94, 26, 0.150),  -- Sucre
(94, 23, 0.010);  -- Levure chimique

-- Plat 95 : Compote de poires épicée
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(95, 96, 0.300),  -- Poire
(95, 26, 0.150);  -- Sucre

-- Plat 96 : Biscotti aux amandes
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(96, 73, 0.100),  -- Amande
(96, 22, 0.200),  -- Farine de blé
(96, 26, 0.150);  -- Sucre

-- Plat 97 : Flan végétal
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(97, 24, 0.300),  -- Lait
(97, 26, 0.150),  -- Sucre
(97, 23, 0.010);  -- Levure chimique

-- Plat 98 : Salade de fruits exotiques
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(98, 59, 0.200),  -- Banane
(98, 60, 0.200),  -- Fraise
(98, 61, 0.200),  -- Kiwi
(98, 63, 0.200);  -- Orange

-- Plat 99 : Gaufres végétariennes aux fruits
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(99, 22, 0.200),  -- Farine de blé (pour la pâte)
(99, 24, 0.200),  -- Lait
(99, 26, 0.150),  -- Sucre
(99, 60, 0.200);  -- Fraise

-- Plat 100 : Crème brûlée végétalienne
INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES
(100, 24, 0.300), -- Lait
(100, 26, 0.150), -- Sucre
(100, 67, 0.005), -- Vanille
(100, 8, 0.005);  -- Sel fin
