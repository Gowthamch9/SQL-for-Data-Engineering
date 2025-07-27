create table fruits(
fruit_id serial primary key,
fruit_name varchar(100)
)




create table categories (
category_id serial primary key,
category_name varchar(100)
)

create table products (
product_id serial primary key, 
product_name varchar(100),
price decimal(10,2),
description varchar(255),
tags varchar(255),
category_id int,
foreign key (category_id) references categories(category_id),
supplier varchar(100)
)

create table customer (
customer_id serial primary key,
customer_name varchar(100) not null,
email varchar(100) not null,
phone_number varchar(20),
address varchar(100), 
city varchar(100)
)

create table orders(
order_id serial primary key,
customer_id int,
foreign key (customer_id) references customer(customer_id),
product_id int,
foreign key (product_id) references products(product_id),
total_quantity int,
total_amount decimal(10,2),
order_rating decimal(3,1),
length DECIMAL(5,2),
width DECIMAL(5,2),
order_timestamp TIMESTAMP,
delivery TIMESTAMP
)


insert into fruits(fruit_name) values ('Apple'), ('Banana'), ('Oranges'), ('Grapes')

select * from fruits


insert into categories(category_name) values ('Electronics'), ('Kitchen'), ('Clothing')

select * from categories

insert into products(product_name, price, description, tags, category_id, supplier) 
values
 ('Laptop', null, 'personal computers for high-professionals', 'electronics, portable, tech', 1, ' SupplierA'),
 ('Headphones', 129.99, 'Over-ear wireless headphones', 'electronics, audio, accessories', 1, 'SupplierB'),
 ('Backpack', 49.99, 'Stylish and durable backpack for everyday use', 'fashion, accessories, travel', 2, 'NULL'),
 ('Coffee Maker', NULL, 'Automatic drip coffee maker with programmable timer', 'home, kitchen, appliances', 3, 'NULL'),
 ('Fitness Tracker', 79.99, 'Water-resistant fitness tracker with heart rate monitor', 'electronics, fitness, wearables', 1, 'NULL')

select * from products
 
INSERT INTO customer (customer_name, email, phone_number, address, city) VALUES
    ('Alice Johnson', 'alice@example.com', '123-456-7890', '123 Main St', 'Cityville'),
    ('Bob Smith', 'bob@example.com', '987-654-3210', '456 Oak Ave', 'Townsville'),
    ('Charlie Brown', 'charlie@example.com', '555-123-4567', '789 Pine Ln', 'New York'),
    ('David White', 'david@example.com', '222-333-4444', '567 Maple Dr', 'NYC'),
    ('Eva Black', 'eva@example.com', '999-888-7777', '890 Cedar Rd', 'Big Apple'),
    ('Frank Green', 'frank@example.com', '111-222-3333', '123 Elm St', 'Gotham City');

select * from customer	

INSERT INTO Orders (customer_id, product_id, total_quantity, total_amount, order_rating, length, width, order_timestamp, delivery)
VALUES
    (1, 1, 5, 120.50, 4.5, 2.3, 1.8, '2023-01-15 10:30:00', '2023-01-16 15:45:00'),
    (2, 2, 3, 75.25, 3.8, 1.5, 1.2, '2023-02-03 14:20:00', '2023-02-05 11:10:00'),
    (3, 3, 7, 210.75, 4.2, 2.8, 2.0, '2023-03-12 08:45:00', '2023-03-14 09:30:00'),
    (1, 4, 2, 50.00, 4.0, 1.8, 1.5, '2023-04-05 12:15:00', '2023-04-07 18:20:00');	

select * from orders	

 