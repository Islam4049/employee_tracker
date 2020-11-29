--CREATING OUR DATABASE --
DROP DATABASE IF EXISTS employee_trackerDB;

CREATE DATABASE employee_trackerDB;

USE employee_trackerDB;

-- DEPARTMENT TABLE ----
CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30)
 
);
-- DEPARTMENT TABLE ----
CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30),
  salary DECIMAL,
  department_id INT,
  FOREIGN KEY (department_id) REFERENCES department(id)
);
-- EMPLOYEE ROLE TABLE ----
CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  manager_id INT,
  role_id INT,
  FOREIGN KEY (role_id) REFERENCES role(id),
  FOREIGN KEY (manager_id) REFERENCES employee(id)

);

-- DEPARTMENT SEEDS -----
INSERT INTO department (name)
VALUE ("Sales");
INSERT INTO department (name)
VALUE ("Engineering");
INSERT INTO department (name)
VALUE ("Finance");
INSERT INTO department (name)
VALUE ("Legal");

-- EMPLOYEE ROLE SEEDS -------
INSERT INTO role (title, salary, department_id)
VALUE ("Lead Engineer", 140000, 2);
INSERT INTO role (title, salary, department_id)
VALUE ("Legal Team Lead", 270000, 4);
INSERT INTO role (title, salary, department_id)
VALUE ("Accountant", 127000, 3);
INSERT INTO role (title, salary, department_id)
VALUE ("Sales Lead", 100000, 1);
INSERT INTO role (title, salary, department_id)
VALUE ("Salesperson", 80000, 1);
INSERT INTO role (title, salary, department_id)
VALUE ("Software Engineer", 120000, 2);
INSERT INTO role (title, salary, department_id)
VALUE ("Lawyer", 2000000, 4);

-- EMPLOYEE SEEDS -------
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Stefinny", "Blake", null, 1);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Jimmy", "Jose", null, 2);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Maria","Desuza",null,3);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Benney", "Lio", 1, 4);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Christhopher", "Obey", 4, 5);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Jose", "Apple", 1, 6);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Tommmy", "White", 2, 7);

-- SELECTING FOR CREATING 
--TABLES IN OUR SQL WORKBENCH 
SELECT * FROM department;
SELECT * FROM role;
SELECT * FROM employee;
