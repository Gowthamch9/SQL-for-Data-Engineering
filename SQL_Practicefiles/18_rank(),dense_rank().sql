select customer_id, 
rank() over (partition by customer_id order by total_amount desc) as order_rank,
total_amount
from orders


select customer_id, 
dense_rank() over (partition by customer_id order by total_amount desc) as order_rank,
total_amount
from orders