select product_name from products where product_id in(select product_id from products
intersect
select product_id from order_items oi join orders o on o.order_id = oi.order_id)