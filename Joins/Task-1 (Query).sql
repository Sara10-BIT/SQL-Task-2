select customer_name, city, order_date from customers c inner join orders o on c.customer_id = o.customer_id where 
       Extract(Year from order_date) = 2023;

https://github.com/Sara10-BIT/SQL-Task-2.git