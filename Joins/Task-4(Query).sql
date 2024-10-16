select product_name,category,total_price
from orders o 
     inner join order_items oi
	 on o.order_id = oi.order_id
	 inner join products p
	 on p.product_id = oi.product_id
where
     order_date >= '2023-01-01' and order_date < '2023-07-01';
