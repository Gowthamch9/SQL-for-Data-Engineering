create procedure add_category(cat_id int, cat_name varchar)
language plpgsql
as
$$
begin
insert into categories values (cat_id,cat_name);
end;
$$;

call add_category(4,'fashion')

select * from categories

drop procedure add_category

create procedure add_category(cat_id int,cat_name varchar)
language plpgsql
as
$$
begin
insert into categories values (5, 'sports');
end;
$$;

call add_category(6,'gym')

select * from categories