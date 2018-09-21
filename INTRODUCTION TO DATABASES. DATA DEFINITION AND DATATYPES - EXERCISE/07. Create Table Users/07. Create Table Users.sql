CREATE TABLE users(id BIGINT(32) AUTO_INCREMENT, username VARCHAR(30) NOT NULL,
password VARCHAR(26) NOT NULL, profile_picture BLOB(900), last_login_time DATETIME, is_DELETED BOOLEAN,
PRIMARY KEY(id));

INSERT INTO users(username, password) values('Pesho', '123456');
INSERT INTO users(username, password) values('Pesho', '123456');
INSERT INTO users(username, password) values('Pesho', '123456');
INSERT INTO users(username, password) values('Pesho', '123456');
INSERT INTO users(username, password) values('Pesho', '123456');