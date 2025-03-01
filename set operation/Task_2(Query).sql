-- select customer_name from customers where customer_id in (select customer_id from orders where extract(year from order_date) = 2022)
-- intersect
-- select customer_name from customers where customer_id in (select customer_id from orders where extract(year from order_date) = 2023)

select product_id,product_name from products where product_id in (select product_id from order_items oi join orders o on o.order_id = oi.order_id  
where extract (year from order_date)=2022)
except
select product_id,product_name from products where product_id in (select product_id from order_items oi join orders o on o.order_id = oi.order_id 
where extract (year from order_date)=2023)
