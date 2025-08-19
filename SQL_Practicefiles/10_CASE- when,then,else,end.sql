select * from products

select name, description, price,
case
when price<100 then 'Inexpensive'
when price>100 and price<200 then 'Affordable'
else 'Expensive'
end as ProductCategorization

from products