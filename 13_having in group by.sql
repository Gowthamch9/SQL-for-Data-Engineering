select c.name,c.category_id, count(p.category_id) from categories c join products p on c.category_id=p.category_id group by c.category_id having count(p.product_id)>1
select * from products