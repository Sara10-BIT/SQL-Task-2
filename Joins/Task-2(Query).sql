select customer_name,order_date,total_price
from customers c 
       inner join orders o
	   on c.customer_id = o.customer_id 
       inner join order_items oi 
	   on oi.order_id = o.order_id
where o.payment_mode = 'Credit Card';

   