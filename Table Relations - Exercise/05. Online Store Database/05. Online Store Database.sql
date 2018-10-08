CREATE TABLE customers(
customer_id INT(11) NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
birthday DATE NOT NULL,
city_id INT NOT NULL);


CREATE TABLE cities(
city_id INT(11) NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50) NOT NULL);

CREATE TABLE orders(
order_id INT(11) NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
customer_id INT(11) NOT NULL);


CREATE TABLE order_items(
order_id INT(11) NOT NULL,
item_id INT(11) NOT NULL,
CONSTRAINT PK_order_item_id PRIMARY KEY order_items(order_id, item_id));

CREATE TABLE items(
item_id INT(11) NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
item_type_id INT(11) NOT NULL);

CREATE TABLE item_types(
item_type_id INT(11) NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50) NOT NULL);


ALTER TABLE customers
ADD CONSTRAINT FK_city_id FOREIGN KEY (city_id)
REFERENCES cities(city_id);

ALTER TABLE orders
ADD CONSTRAINT FK_customer_id FOREIGN KEY (customer_id)
REFERENCES customers(customer_id);

ALTER TABLE order_items
ADD CONSTRAINT FK_order_id FOREIGN KEY (order_id)
REFERENCES orders(order_id);

ALTER TABLE order_items
ADD CONSTRAINT FK_item_id FOREIGN KEY (item_id)
REFERENCES items(item_id);

ALTER TABLE items
ADD CONSTRAINT FK_item_type_id FOREIGN KEY (item_type_id)
REFERENCES item_types(item_type_id);