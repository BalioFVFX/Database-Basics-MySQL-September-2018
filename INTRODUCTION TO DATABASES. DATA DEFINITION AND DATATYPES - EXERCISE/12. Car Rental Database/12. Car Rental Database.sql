CREATE TABLE categories(id INT(11) NOT NULL AUTO_INCREMENT UNIQUE,
category VARCHAR(100) NOT NULL, 
daily_rate DOUBLE NOT NULL, 
weekly_rate DOUBLE NOT NULL,
monthly_rate DOUBLE NOT NULL, 
weekend_rate DOUBLE NOT NULL, 
PRIMARY KEY(id));

CREATE TABLE cars(id INT(11) NOT NULL AUTO_INCREMENT UNIQUE, 
plate_number INT(11) NOT NULL, 
make VARCHAR(100) NOT NULL, 
model VARCHAR(100) NOT NULL,
car_year YEAR NOT NULL,
category_id INT(11) NOT NULL,
doors INT(11) NOT NULL,
pictures BLOB,
car_condition TEXT NOT NULL,
available TEXT NOT NULL,
PRIMARY KEY(id));

CREATE TABLE employees(id INT(11) NOT NULL AUTO_INCREMENT UNIQUE,
first_name VARCHAR(100) NOT NULL,
last_name VARCHAR(100) NOT NULL,
title VARCHAR(100) NOT NULL,
notes TEXT,
PRIMARY KEY(id));

CREATE TABLE customers(id INT(11) NOT NULL AUTO_INCREMENT UNIQUE,
driver_licence_number INT(11) NOT NULL,
full_name VARCHAR(100) NOT NULL,
address VARCHAR(100) NOT NULL,
city VARCHAR(100) NOT NULL,
zip_code INT NOT NULL,
notes TEXT,
PRIMARY KEY(id));

CREATE TABLE rental_orders(id INT(11) NOT NULL AUTO_INCREMENT UNIQUE,
employee_id INT(11) NOT NULL,
customer_id INT(11) NOT NULL,
car_id INT(11) NOT NULL,
car_condition TEXT NOT NULL,
tank_level INT NOT NULL,
kilometrage_start INT(11) NOT NULL,
kilometrage_end INT(11) NOT NULL,
total_kilometrage INT(11) NOT NULL,
start_date DATE NOT NULL,
end_date DATE NOT NULL,
total_days INT NOT NULL,
rate_applied DOUBLE NOT NULL,
tax_rate DOUBLE NOT NULL,
order_status TEXT NOT NULL,
notes TEXT,
PRIMARY KEY(id));

INSERT INTO categories(id, category, daily_rate, weekly_rate, monthly_rate, weekend_rate) values (1, 'First category', 1, 1, 1, 1);
INSERT INTO categories(id, category, daily_rate, weekly_rate, monthly_rate, weekend_rate) values (2, 'Second category', 1, 1, 1, 1);
INSERT INTO categories(id, category, daily_rate, weekly_rate, monthly_rate, weekend_rate) values (3, 'Third category', 1, 1, 1, 1);

INSERT INTO cars(id, plate_number, make, model, car_year, category_id, doors, car_condition, available) values(1, 1, 'Nissan', 'Silvia', '1999', 1, 5, 'Good', 'YES');
INSERT INTO cars(id, plate_number, make, model, car_year, category_id, doors, car_condition, available) values(2, 2, 'Nissan', 'Silvia', '1999', 2, 5, 'Good', 'YES');
INSERT INTO cars(id, plate_number, make, model, car_year, category_id, doors, car_condition, available) values(3, 3, 'Nissan', 'Silvia', '1999', 3, 5, 'Good', 'YES');

INSERT INTO employees(id, first_name, last_name, title) values (1, 'First Name', 'Last Name', 'Title');
INSERT INTO employees(id, first_name, last_name, title) values (2, 'First Name', 'Last Name', 'Title');
INSERT INTO employees(id, first_name, last_name, title) values (3, 'First Name', 'Last Name', 'Title');

INSERT INTO customers(id, driver_licence_number, full_name, address, city, zip_code) values (1, 1, 'Full name', 'Somewhere', 'City', 123456789);
INSERT INTO customers(id, driver_licence_number, full_name, address, city, zip_code) values (2, 1, 'Full name', 'Somewhere', 'City', 123456789);
INSERT INTO customers(id, driver_licence_number, full_name, address, city, zip_code) values (3, 1, 'Full name', 'Somewhere', 'City', 123456789);

INSERT INTO rental_orders(id, employee_id, customer_id, car_id, car_condition, tank_level, kilometrage_start, kilometrage_end, total_kilometrage, start_date, end_date, total_days, rate_applied, tax_rate, order_status) values(
1, 1, 1, 1, 'Good', 10, 0, 1000000, 3000, '1999-06-07', '2000-09-10', 250, 1, 1, 'Order status');
INSERT INTO rental_orders(id, employee_id, customer_id, car_id, car_condition, tank_level, kilometrage_start, kilometrage_end, total_kilometrage, start_date, end_date, total_days, rate_applied, tax_rate, order_status) values(
2, 2, 2, 2, 'Good', 10, 0, 1000000, 3000, '1999-06-07', '2000-09-10', 250, 1, 1, 'Order status');
INSERT INTO rental_orders(id, employee_id, customer_id, car_id, car_condition, tank_level, kilometrage_start, kilometrage_end, total_kilometrage, start_date, end_date, total_days, rate_applied, tax_rate, order_status) values(
3, 3, 3, 3, 'Good', 10, 0, 1000000, 3000, '1999-06-07', '2000-09-10', 250, 1, 1, 'Order status');