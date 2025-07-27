select city, count(city) as no_of_customers from customer group by city
select * from products
select c.name, c.category_id, count(c.category_id) as products_count from products p inner join categories c on c.category_id=p.category_id  group by c.category_id