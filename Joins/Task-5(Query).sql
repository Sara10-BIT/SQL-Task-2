select customer_name,Quantity 
from customers c 
     inner join orders o
	 on c.customer_id = o.customer_id
	 inner join order_items oi
	 on oi.order_id = o.order_id;