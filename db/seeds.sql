INSERT INTO department(department_name) VALUES 
('Engineering'), ('Finance'), ('Legal'), ('Sales');

INSERT INTO tableRole(title, salary, department_id) VALUES
('Sales Lead', 100000, 4), 
('Salesperson', 80000, 4), 
('Lead Engineer', 150000, 1), 
('Software Engineer', 120000, 1), 
('Account Manager', 160000, 2), 
('Accountant', 125000, 2), 
('Legal Team Lead', 250000, 3), 
('Lawyer', 190000, 3);

INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES
('John', 'Doe', 4, null),
('Micheal', 'Hard', 4, 1),
('Ashley', 'Holder', 1, null),
('Kevin', 'Tupinik', 1, 3),
('Dave', 'Chapel', 1, null),
('Morgan', 'Wallace', 2, null),
('Jessica', 'More', 3, null),
('Tracey', 'Inten', 3, null);