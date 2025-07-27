select customer_id,order_id,order_timestamp,
lag(order_timestamp, 1) over (partition by customer_id order by order_timestamp) as prev_row,
lead(order_timestamp, 1) over (partition by customer_id order by order_timestamp) as next_row
from orders