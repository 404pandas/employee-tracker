-- Functions for performing specific SQL queries will go here
-- A constructor function for class will be helpful organizing functions
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

const employees = `WITH RECURSIVE manager AS (
    SELECT  id, first_name, last_name, role_id, manager_id
    FROM employee
    WHERE manager_id IS NULL
    UNION ALL
    SELECT  e.id, e.first_name, e.last_name, e.role_id, e.manager_id
    FROM employee e, manager m
    WHERE e.manager_id = m.id
)
SELECT  
    employee.id, 
    employee.first_name,
    employee.last_name,
    role.title,
    department.name AS department,
    role.salary,
    CONCAT(manager.first_name, ' ', manager.last_name) as manager_name
FROM employee
JOIN role ON employee.role_id = role.id
JOIN department ON role.department_id = department.id
LEFT JOIN manager ON employee.manager_id = manager.id;`;

const roles = `SELECT role.id, role.title, department.name AS department, role.salary
FROM role
JOIN department ON role.department_id = department.id;`;

const departments = `SELECT *
FROM department;`;

module.exports = {employees, roles, departments };