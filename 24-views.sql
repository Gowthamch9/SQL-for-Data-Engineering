create view total_category_amount as
select category_id,sum(price)
from products
group by category_id


select * from total_category_amount where category_id=1