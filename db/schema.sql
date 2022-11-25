-- Needed: view all departments, view all roles, view all employees, add a department, add a role, add an employee, and update an employee role
-- WHEN I choose to view all departments THEN I am presented with a formatted table showing department names and department ids
-- WHEN I choose to view all roles THEN I am presented with the job title, role id, the department that role belongs to, and the salary for that role
-- WHEN I choose to view all employees THEN I am presented with a formatted table showing employee data, including employee ids, first names, last names, job titles, departments, salaries, and managers that the employees report to
-- WHEN I choose to add a department THEN I am prompted to enter the name of the department and that department is added to the database
-- WHEN I choose to add a role THEN I am prompted to enter the name, salary, and department for the role and that role is added to the database
-- WHEN I choose to add an employee THEN I am prompted to enter the employee’s first name, last name, role, and manager, and that employee is added to the database
-- WHEN I choose to update an employee role THEN I am prompted to select an employee to update and their new role and this information is updated in the database
-- Bonus- View employees by manager, view employees by department, view total budget of department
-- total budget = (combined salaries of all employees in that department)


-- DROP DATABASE IF EXISTS drops all tables in the database and deletes the database
-- CREATE DATABASE creates a database with the given name
DROP DATABASE IF EXISTS employee_tracker_db;
CREATE DATABASE employee_tracker_db;

-- USE tells MySQL to use the named database as the default (current) database for subsequent statements
USE employee_tracker_db;

-- CREATE TABLE creates a table with the given name
-- By default, tables are created in the default database
CREATE TABLE department (
    -- The AUTO_INCREMENT attribute can be used to generate a unique identity for new rows
    -- A PRIMARY KEY is a field in a table which uniquely identifies each row/record in a database table.
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(225) NOT NULL
);

CREATE TABLE role (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(225) NOT NULL,
    department_id INT,
    salary DECIMAL NOT NULL,
    -- A FOREIGN KEY relationship involves a parent table that holds the initial column values
    -- and a child table with column values that reference the parent column values
    -- A FOREIGN KEY constraint is defined on the child table.
    FOREIGN KEY (department_id)
    -- The references keyword is used to define which table and column is used in a FOREIGN KEY relationship.
    REFERENCES department(id)
    -- When an UPDATE or DELETE operation affects a key value in the parent table that has matching rows in the child table
    -- the result depends on the referential action specified
    -- DELETE or UPDATE the row from the parent table and set the FOREIGN KEY column or columns in the child table to NULL
    ON DELETE SET NULL
);

CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(225) NOT NULL,
    last_name VARCHAR(225) NOT NULL,
    role_id INT,
    manager_id INT,
    FOREIGN KEY (role_id)
    REFERENCES role(id)
    ON DELETE SET NULL,
    FOREIGN KEY (manager_id)
    REFERENCES employee(id)
    ON DELETE SET NULL
);