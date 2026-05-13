-- =========================================
-- 1. CLEANUP (Wipe existing tables to start fresh)
-- =========================================
DROP TABLE IF EXISTS support_tickets CASCADE;
DROP TABLE IF EXISTS payments CASCADE;
DROP TABLE IF EXISTS order_details CASCADE;
DROP TABLE IF EXISTS orders CASCADE;
DROP TABLE IF EXISTS services CASCADE;
DROP TABLE IF EXISTS employees CASCADE;
DROP TABLE IF EXISTS customers CASCADE;


-- =========================================
-- CUSTOMER MANAGEMENT DATABASE SCHEMA
-- =========================================

create table customers (
customer_id serial primary key,
full_name varchar(100) not null,
email varchar(100)unique not null,
phone varchar(100),
city varchar(50),
country varchar(50),
registration_date date default current_date
);

create table employees (
employee_id serial primary key,
full_name varchar(100) not null,
department varchar(50),
salary numeric(10,2),
hire_date date
);

create table services (
service_id serial primary key,
service_name varchar(100) not null,
catagory varchar(50),
price numeric(10,2) not null
);

create table orders (
order_id serial primary key,
customer_id int references customers(customer_id),
employee_id int references employees(employee_id),
order_date date default current_date,
total_amount numeric(10,2),
status varchar(30)
);

create table order_details (
detail_id serial primary key,
order_id int references orders(order_id) on delete cascade,
service_id int references services(service_id),
quantity int not null,
subtotal numeric(10,2)
);

create table payments (
payment_id serial primary key,
order_id int references orders(order_id),
payment_date date,
payment_method varchar(30),
amount numeric(10,2),
payment_status varchar(30)
);

create table support_tickets (
ticket_id serial primary key,
customer_id int references customers(customer_id),
issue_title varchar(150),
issue_status varchar(30),
created_at timestamp default current_timestamp
);
