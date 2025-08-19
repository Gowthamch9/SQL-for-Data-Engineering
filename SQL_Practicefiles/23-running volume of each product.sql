select order_id,product_id,total_quantity,order_timestamp,
sum(total_quantity) over (partition by product_id order by order_timestamp) as total_products
from orders