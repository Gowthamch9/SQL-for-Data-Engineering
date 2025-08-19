SELECT * FROM products ORDER BY price DESC 

select * from customer order by customer_name, city

select * from orders order by total_amount desc

select total_amount from orders where total_amount > 100 order by total_amount desc

select * from products where price > 50 and category_id=1

select * from products where price > 50 or category_id=1