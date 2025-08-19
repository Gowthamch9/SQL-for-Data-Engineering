select customer_id,order_id, 
row_number() over (partition by customer_id order by order_timestamp) as order_sequence,
order_timestamp
from orders