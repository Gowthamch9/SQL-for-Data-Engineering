select customer_id,order_id,order_timestamp,total_amount,
avg(total_amount) over (partition by customer_id order by order_timestamp) as mvg_average
from orders