#inner_join
select order_id,name, description  from products p inner join orders o on p.product_id=o.product_id
select * from customer
select * from orders
select * from categories
select * from products
select customer_name, city, total_amount from customer as c inner join orders as o on c.customer_id=o.customer_id

#left_join
select customer_name, city, total_amount from customer as c left join orders as o on c.customer_id=o.customer_id

#right_join
select name, price, total_amount from orders o right join products p on o.product_id=p.product_id

#full_outer_join
select c.name, p.name, price from categories c full outer join products p on c.category_id=p.category_id

#joining two or more tables
select p.name, c.name, total_quantity, total_amount, price from categories c full join products p on c.category_id=p.category_id full join orders o on p.product_id=o.product_id