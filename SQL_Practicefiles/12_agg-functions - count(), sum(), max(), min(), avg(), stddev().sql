select * from orders
select count(customer_id) from orders
select count(distinct customer_id) from orders

select sum(total_amount) from orders
select max(total_amount) from orders
select min(total_amount) from orders

select avg(total_amount) from orders
select stddev(total_amount) from orders