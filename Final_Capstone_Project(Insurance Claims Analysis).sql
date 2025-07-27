create table Customers (
Customer_Id serial primary key,
FirstName varchar(100),
LastName varchar(100),
Address varchar(255), 
Phone varchar(20),
Email varchar(20)
)

create table Policies (
Policy_Id serial primary key,
Customer_Id int,
foreign key (Customer_Id) references Customers(Customer_Id),
Policy_type varchar(100),
start_date timestamp,
end_date timestamp,
premium_amount int, 
coverage_amount int
)

create table Claims (
Claim_Id serial primary key,
Policy_id int,
foreign key (Policy_Id) references Policies(Policy_Id),
claim_date timestamp,
claim_amount int,
claim_status varchar(20),
Description varchar(100)
)

create table PolicyTypes (
PolicyType_Id serial primary key,
Policy_type varchar(100),
foreign key (Policy_type) references Policies(Policy_type),
Description varchar(255)
)

insert into Customers(FirstName, LastName, Address, Phone, Email) values
('John','Doe','123 Elm St, Springfield','555-1234','john.doe@email.com'),
('Jane','Smith','456 Oak Rd, Chicago','555-5678','jane.smith@email.com'),
('Michael','Johnson','789 Pine Blvd, Dallas','555-9012','michael.j@email.com'),
('Emily','Davis','101 Maple Ave, Houston','555-3456','emily.davis@email.com'),
('Sarah','Lee','202 Birch Dr, Austin','555-6789','sarah.lee@email.com')

ALTER TABLE Customers
ALTER COLUMN Email
SET DATA TYPE VARCHAR(100);

select * from Customers

insert into Policies(Customer_id, Policy_type, start_date, end_date, premium_amount, coverage_amount) values
('1','Auto Insurance','2024-01-01','2025-01-01','1200.00','50000.00'),
('2','Home Insurance','2024-06-01','2025-06-01','900.00','200000.00'),
('3','Health Insurance','2024-03-15','2025-03-15','1500.00','100000.00'),
('4','Life Insurance','2024-08-01','2025-08-01','500.00','250000.00')

ALTER TABLE Policies
ALTER COLUMN premium_amount
SET DATA TYPE decimal(10,3);

alter table Policies
alter column coverage_amount
set data type decimal(10,3);

select * from Policies

insert into Claims(Policy_ID,claim_date,claim_amount,claim_status,Description) values
('6', '2024-03-05', '3500.00', 'Approved', 'Accident repair'),
('7', '2024-07-10', '15000.00', 'Pending', 'Water damage from flood'),
('8', '2024-09-21', '2000.00', 'Approved', 'Hospital bill for surgery'),
('9', '2024-12-01', '250000.00', 'Approved', 'Death benefits payout')

alter table Claims
alter column claim_amount
set data type decimal(10,3);

select * from Claims

insert into PolicyTypes(policy_type,Description) values
('Auto Insurance', 'Covers vehicle damage and liability'),
('Home Insurance', 'Covers property damage, theft, and disasters'),
('Health Insurance', 'Covers medical expenses and treatments'),
('Life Insurance', 'Provides a payout in the event of death')

select * from PolicyTypes

select count(c.Claim_Id), p.Policy_type from claims c join Policies p on c.Policy_Id=p.Policy_Id group by p.policy_type

create index idx_claims_claimdate on Claims(claim_date);

create role ClaimsAnalyst with login password 'Analyst@123'

grant select on Policies, Claims, PolicyTypes to ClaimsAnalyst

create role ClaimsManager with login password 'Manager@123'

grant all on Policies, Claims, PolicyTypes to ClaimsManager