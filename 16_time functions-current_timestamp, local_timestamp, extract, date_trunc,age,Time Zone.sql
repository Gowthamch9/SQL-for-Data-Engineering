select * from orders

select current_timestamp

select current_time

select localtime

select localtimestamp

select extract(hour from current_timestamp)

select extract(minute from current_timestamp)

select extract(second from current_timestamp)

select date_trunc('day', order_timestamp) from orders

select age(order_timestamp,delivery) from orders

select current_timestamp at Time Zone 'PST'


