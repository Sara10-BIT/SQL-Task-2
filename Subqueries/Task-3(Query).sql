select product_name from products where product_id in
(select oi.product_id from order_items oi join orders o on oi.order_id = o.order_id 
join customers c on o.customer_id = c. customer_id where c.city = 'Pune');