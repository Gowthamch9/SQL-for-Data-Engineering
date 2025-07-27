create user GowthamVenkat 
alter user GowthamVenkat with login password 'Devi@1513'

drop role if exists GowthamVenkat

create user GowthamVenkat with login password 'Devi@1513' superuser
create user Grishma with login password 'Grishma@123' createdb
create user gowtham1 with login password 'Grishma@123' createrole
create user gowtham2 with password 'Grishma@123' valid until '2025-05-31'
create user gowtham3 with password 'Grishma@123' in role gowtham1