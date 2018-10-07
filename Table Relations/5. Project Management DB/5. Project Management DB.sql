CREATE TABLE employees(
id INT(11) NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
project_id INT(11) NOT NULL
);

CREATE TABLE clients(
id INT(11) NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
client_name VARCHAR(100) NOT NULL,
project_id INT(11) NOT NULL);

CREATE TABLE projects(
id INT(11) NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
client_id INT(11) NOT NULL,
project_lead_id INT(11) NOT NULL,
CONSTRAINT FK_client_id FOREIGN KEY (client_id)
REFERENCES clients(id),
CONSTRAINT FK_projects_project_lead_id FOREIGN KEY (project_lead_id)
REFERENCES employees(id));

ALTER TABLE employees
ADD CONSTRAINT FK_employee_project_id FOREIGN KEY (project_id)
REFERENCES projects(id);

ALTER TABLE clients
ADD CONSTRAINT FK_client_project_id FOREIGN KEY (project_id)
REFERENCES projects(id);