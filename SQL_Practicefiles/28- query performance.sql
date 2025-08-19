explain analyze select * from customer

select * from pg_stat_user_indexes
select * from orders
create index idx_order_time on orders(order_timestamp)