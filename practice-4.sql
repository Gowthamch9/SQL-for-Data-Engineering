select * from products
select * from orders
select * from customer
select * from categories

select abs(-5.73)
select abs(5.73)
select ceil(5.5)
select ceil(-5.5)
select floor(5.5)
select floor(-5.5)
select round(7.1359810, 2)
select sqrt(35.5)

select current_date
select extract(day from current_date) as day
select extract(month from current_date) as month
select extract(year from current_date) as year
select date_part('day',current_date)
select date_part('month', current_date)
select date_part('year', current_date)
select date_trunc('day', current_date)
select date_trunc('month', current_date)
select date_trunc('year', current_date)
select age(current_date, '2001-05-15')
select age('2001-05-15', current_date)
select age(timestamp '2001-05-15')
select age('2001-05-15', '2001-08-06')
select age('2001-08-06', '2001-05-15')
select to_date('05/15/2001', 'mm/dd/yyyy')
select to_char('2001-05-15'::date, 'mm/dd/yyyy')
select to_char(current_date, 'mm/dd/yyyy')
select to_char(9405364494, '+1999-999-9999')

select current_time
select current_timestamp
select localtime
select localtimestamp
select extract('hour' from current_time)
select extract('minute' from current_time)
select extract('second' from current_time)
select date_part('hour',current_time)
select date_part('minute', current_time)
select date_part('second', current_time)
select date_trunc('hour', current_timestamp)
select date_trunc('minute', current_timestamp)
select date_trunc('second', current_timestamp)
select current_timestamp at time zone 'IST'


select * from customer
select address || ' , ' || city as address from customer 
select concat(address, city) as address from customer
select concat_ws(' , ', address, city) as address from customer
select trim('   Hello   ')
select btrim('   Hello   ')
select ltrim('   Hello   ')
select rtrim('   Hello   ')
select trim('x' from 'xxxxxHelloxxxxx')
select upper(customer_name) from customer
select lower(customer_name) from customer
select initcap(customer_name) from customer
select substring('Hello! How are you?' from 11 for 6)
select left('Hello! How are you?', 6)
select right('Hello! How are you?', 6)
select position ('How' in 'Hello! How are you?')
select length('Hello! How are you?')

select * from orders
select customer_id, total_amount, 
rank() over (partition by customer_id order by total_amount) as order_rank
from orders

select customer_id, total_amount, 
dense_rank() over (partition by customer_id order by total_amount) as order_rank
from orders

insert into orders(customer_id, total_amount) values 
('4', '259.99'), ('5', '499.99'),('6', '359.99') 

insert into orders(customer_id, total_amount) values 
('2', '269.99'), ('6', '599.99'),('5', '389.99') 

insert into orders(customer_id, total_amount) values 
('1', '199.99'), ('1', '299.99'),('2', '269.99') 

select customer_id, total_amount, 
row_number() over (partition by customer_id order by total_amount) as order_sequence
from orders

select age(order_timestamp, delivery) from orders

select order_id, customer_id,order_timestamp, 
row_number() over (order by order_timestamp)
from orders

select customer_id, order_id, order_timestamp,
lag(order_timestamp,1) over (partition by customer_id order by order_timestamp) as prev_order,
lead(order_timestamp,1) over (partition by customer_id order by order_timestamp) as next_order
from orders

select customer_id, total_amount, order_timestamp,
sum(total_amount) over (partition by customer_id order by order_timestamp) as running_total
from orders

select order_id, customer_id,order_timestamp from orders order by order_timestamp


update orders set order_timestamp = '2023-05-15 10:00:00' where order_id = 14

select customer_id, total_amount, order_timestamp,
avg(total_amount) over (partition by customer_id order by order_timestamp) as moving_avg
from orders


create view total_amount as
select customer_id, sum(total_amount) as total_sum
from orders 
group by customer_id 
order by total_sum desc

select * from total_amount

create procedure add_customer3(cus_id int, cus_name varchar, email varchar, phone_number varchar, address varchar, city varchar)
language plpgsql
as
$$
begin
insert into customer values(cus_id, cus_name,email, phone_number, address, city);
end;
$$

drop procedure add_customer

call add_customer3(7, 'Grishma Tallapareddy', 'Grishma@gmail.com', '940-940-9409', '2225 stella', 'Denton')