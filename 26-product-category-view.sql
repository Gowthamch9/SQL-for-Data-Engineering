create view product_category_name as
select p.name as product,c.name as category from categories c inner join products p on p.category_id=c.category_id

select * from product_category_name where category = 'Electronics'