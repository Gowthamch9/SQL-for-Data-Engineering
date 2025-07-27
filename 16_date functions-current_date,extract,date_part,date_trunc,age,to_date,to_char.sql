select current_date

select extract(day from current_date)

select extract(year from current_date)

select extract(month from current_date)

select date_part('day', current_date)

select date_part('month', current_date)

select date_part('year', current_date)

select date_trunc('month', current_date)

select date_trunc('year', current_date)

select age(timestamp '2001-05-15')

select age(timestamp '2001-08-06')

select age('2001-08-06', '2001-05-15')

select to_date('12/18/2024', 'mm/dd/yyyy')

select to_char(current_date, 'mm/dd/yyyy')



