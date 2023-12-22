use Restaurant_Orders;
select	*
from order_details od left join menu_items mi
  on od.item_id = mi.menu_item_id;

 
 select item_name , category, COUNT(order_details_id) as num_purchases
 from order_details od left join menu_items mi
 on od.item_id=mi.menu_item_id
 group by item_name, category
 order by num_purchases;

 select top(4) category, SUM(price) as prices , SUM(price)/SUM(SUM(price))*100 as d
 from order_details od left join menu_items mi
 on od.item_id=mi.menu_item_id
 group by category
 order by prices desc;

 select	category , COUNT(order_details_id) as num_items
from order_details od left join menu_items mi
  on od.item_id = mi.menu_item_id
  where order_id= 404
  GROUP BY category;

  select	order_id, category, COUNT(order_details_id) as num_items
from order_details od left join menu_items mi
  on od.item_id = mi.menu_item_id
  where order_id in(404,2075,1957,330,2675)
  group by order_id,category
  order by num_items desc;

 

select	SUM(price) total_vente
from order_details od left join menu_items mi
  on od.item_id = mi.menu_item_id;



  select top(4) category, SUM(price) as prices , SUM(price)/SUM(SUM(price))*100 as d
 from order_details od left join menu_items mi
 on od.item_id=mi.menu_item_id
 group by category
 order by prices desc;

 SELECT
    Category,
    SUM(price) AS TotalAmount,
    (SUM(price) / (SELECT SUM(price) FROM menu_items)) * 100 AS Percentage
from order_details od left join menu_items mi
 on od.item_id=mi.menu_item_id
 group by category
 order by TotalAmount desc;
