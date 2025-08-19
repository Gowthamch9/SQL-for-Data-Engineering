select * from products
select * from orders
select * from categories
select * from customer


select customer_name from customer where customer_name like '%n' order by customer_name desc

select product_id, product_name, price from products where price>50 order by product_name desc

select p.product_id, p.product_name, p.price, o.total_quantity, o.total_amount from products p inner join orders o on p.product_id=o.product_id

select o.customer_id, c.customer_name, o.product_id, p.product_name, o.total_amount from customer c right join orders o on c.customer_id=o.customer_id left join products p on o.product_id=p.product_id

select product_name, price from products
union 
select product_name, price from products where price>50

select product_name, price from products
union all
select product_name, price from products where price>50

select product_id,product_name,price,
case 
when price < 100 then 'Inexpensive'
when price > 100 and price < 200 then 'Affordable'
else 'Expensive'
end as ProductCategorization
from products

select c.customer_id, c.customer_name, sum(o.total_amount) from customer c join orders o on c.customer_id=o.customer_id group by c.customer_id
select c.category_name, c.category_id, count(c.category_id) from categories c join products p on c.category_id=p.category_id group by c.category_id having count(c.category_id)>1