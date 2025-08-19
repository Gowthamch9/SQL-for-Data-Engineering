create role sales_team

create role admins

create role head_of_the_teams

grant select on all tables in schema public to sales_team

grant all privileges on all tables in schema public to admins

create role sales_manager in role sales_team