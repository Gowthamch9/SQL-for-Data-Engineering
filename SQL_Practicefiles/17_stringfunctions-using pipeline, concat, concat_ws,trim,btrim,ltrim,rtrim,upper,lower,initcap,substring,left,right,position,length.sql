select * from customer

select address || ' , ' || city from customer

select concat(address, city) from customer

select concat_ws(' , ', city,address) from customer

select trim('  Hello  ')
select btrim('  Hello  ')
select ltrim('  Hello  ')
select rtrim('  Hello  ')

select trim('x' from 'xxxxHelloxxxxx')

select upper(customer_name) from customer

select lower(customer_name) from customer

select initcap(customer_name) from customer

select substring('Hello! How are you?' from 1 for 6)

select substring('Hello! How are you?' from 12 for 6)

select left('Hello! How are you?', 6)

select right('Hello! How are you?',8)

select position('How' in 'Hello! How are you?')

select length('Hello! How are you?')