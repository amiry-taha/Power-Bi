use Restaurant_Orders;
--1- Affichez le tableau Order_details

SELECT * from order_details;
--2- Combien de commandes ont été faites dans cette plage de dates? 

SELECT MIN(order_date) as min , MAX(order_date) max 
from order_details;
--3- Combien d'éléments ont été commandés dans cette plage de dates?

SELect COUNT(distinct order_id)
from order_details;
--4- Combien d'éléments ont été commandés dans cette plage de dates

select COUNT(*) nbr_element from order_details;
--5- quels commandes avaient le plus grand nombre d'articles

SELECT order_id , COUNT(item_id) as nbr_items
from order_details
GROUP BY order_id
order by nbr_items desc;
--6- Combien de commandes avaient plus de 12 articles

SELECT COUNT(*) FROM
(SELECT order_id , COUNT(item_id) AS num_items
from order_details
GROUP BY order_id
HAVING COUNT(item_id) >12) AS num_orders;