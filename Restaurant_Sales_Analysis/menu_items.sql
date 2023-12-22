use Restaurant_Orders;
--1- Affichez le tableau Menu_Items 
select * from menu_items;
--2- trouver le nombre d'éléments dans le menu
select COUNT(*) nbr_Plats
from menu_items;
--3- Quels sont les éléments les moins et les plus chers du menu?
select * from menu_items
ORDER BY price;

--4- Combien de plats italiens y a-t-il au menu? 
select COUNT(*) Plats_Italian from menu_items
WHERE category='Italian'; 
--5- Quels sont les plats italiens les moins et les plus chers du menu??
select * from menu_items
WHERE category='Italian'
ORDER BY price ;

--6-Le nbr des plats de chaque categorie
SELECT category , COUNT(menu_item_id) nbr_plats
from menu_items
GROUP BY category;

--7- la moyenne de chaque categorie

SELECT category , AVG(price) AVG_prix
from menu_items
GROUP BY category;