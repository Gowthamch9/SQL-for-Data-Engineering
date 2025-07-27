select customer_id,order_id,order_timestamp,total_amount,
sum(total_amount) over (partition by customer_id order by order_timestamp) as running_total
from orders