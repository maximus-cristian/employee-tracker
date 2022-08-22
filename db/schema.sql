/* Running mysql in console and accessing database 
We are running schema.sql first to run the following sql commands --> performing specific SQL queries 
These commands are still valid when in the terminal for >mysql

% mysql -u root -p

% SOURCE db/schema.sql

will run following commands
*/
/* Good way to prevent preexisting db to be created each time we run our server, and it ensures that it will be created successfully */
DROP DATABASE IF EXISTS management_db;
CREATE DATABASE management_db;
USE management_db;

/* Now we need our mysql 'models' for each table, and specifying their property 'settings' */

/* FROM the Acceptance criteria specifications/database schema --> we will need: department, role, employee*/
/* name is a reserved word here, so it needs to be modified*/
CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(30) NOT NULL
);

/* role is a reserved word here, so it needs to be modified*/
CREATE TABLE tableRole (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL,
    department_id INT,
    FOREIGN KEY (department_id)
    REFERENCES department(id)
    ON DELETE SET NULL
);

CREATE TABLE employee (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT,
    manager_id INT,
    FOREIGN KEY (role_id)
    REFERENCES tableRole(id),
    FOREIGN KEY (manager_id)
    REFERENCES employee(id)
);