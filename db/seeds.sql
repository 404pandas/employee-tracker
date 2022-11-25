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

USE employee_tracker_db;

INSERT INTO department (name)
VALUES ("Parks and Recreation 1"),
       ("Police 2"),
       ("Fire 3"),
       ("Sewage 4"),
       ("Library 5"),
       ("Education 6"),
       ("Public Works 7"),
       ("Health 8"),
       ("City Council 9");

INSERT INTO role (title, salary, department_id)
VALUES ("Director of Parks and Rec 1", 100,000, 1),
VALUES ("Deputy Director of Parks and Rec 2", 90,000, 1),
VALUES ("Chief of Police 3", 100,000, 2),
VALUES ("Fire Chief 4", 100,000, 3),
VALUES ("Director of Sewage 5", 100,000, 4),
VALUES ("Library Director 6", 100,000, 5),
VALUES ("Library Deputy Director 7", 90,000, 5),
VALUES ("Director of Education 8", 100,000, 6),
VALUES ("Public Works Director 9", 100,000, 7),
VALUES ("Health Department Director 10", 100,000, 8),
VALUES ("Director of Animal Control 11", 100,000, 9),
VALUES ("Animal Controll Officer 12", 10,000, 9),
VALUES ("City Planner 13", 80,000, 9),
VALUES ("Park Ranger 14", 40,000, 9),
VALUES ("Administrator 15", 80,000, 1),
VALUES ("Security Guard 16", 80,000, 9),
VALUES ("City Manager 17", 120,000, 9),
VALUES ("Assistant City Manager 18", 110,000, 9),
VALUES ("Permits Security 19", 80,000, 1),
VALUES ("Office Manager 20", 80,000, 9),
VALUES ("City Attorney Assitant 21", 80,000, 9),
VALUES ("Councilman 22", 80,000, 9),
VALUES ("Court Stenographer 23", 80,000, 9),
VALUES ("Head of DMV 24", 90,000, 9),
VALUES ("Police Officer 25", 80,000, 2),
VALUES ("Sanitation Worker 26", 80,000, 4),
VALUES ("Maintenance Worker 27", 80,000, 7);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Ron", "Swanson", 1, 18),
VALUES ("Leslie", "Knope", 2, 1),
VALUES ("Hugh", "Trumple", 3, 18),
VALUES ("Al", "Connor", 4, 18),
VALUES ("Joe", "Fantringham", 5, 18),
VALUES ("Tammy", "Swanson", 7, 6),
VALUES ("Marlene", "Griggs-Knope", 8, 18),
VALUES ("Harold", "Bauer", 9, 18),
VALUES ("Ann", "Perkins", 10, 18),
VALUES ("April", "Ludgate", 11, 18),
VALUES ("Eugene", "Burnout", 12, 11),
VALUES ("Harris", "Burnout", 12, 11),
VALUES ("Brett", "Burnout", 12, 11),
VALUES ("Mark", "Brendanawicz", 13, 18),
VALUES ("Carl", "Lorthner", 14, 18),
VALUES ("Tom", "Haverford", 15, 2),
VALUES ("Sir Andrew Maxwell", "Dwyer", 16, 18),
VALUES ("Chris", "Traeger", 17, NULL),
VALUES ("Sir Benjamin", "Wyatt", 18, 17),
VALUES ("Donna", "Meagle", 19, 2),
VALUES ("Gerald", "Gergich", 20, 2),
VALUES ("Garry", "Gergich", 20, 2),
VALUES ("Jerry", "Gergich", 20, 2),
VALUES ("Larry", "Gergich", 20, 2),
VALUES ("Lenny", "Gergich", 20, 2),
VALUES ("Terry", "Gergich", 20, 2),
VALUES ("Mailman", "Gergich", 20, 2),
VALUES ("Kyle", "Client", 21, 18),
VALUES ("Jeremy", "Jamm", 22, 18),
VALUES ("Douglass", "Howser", 22, 18),
VALUES ("Ethel", "Beavers", 23, 17),
VALUES ("Dawn", "Krink", 24, 17),
VALUES ("Len", "Hugeff", 25, 3),
VALUES ("Dewey", "Burnout", 26, 5),
VALUES ("George", "Williams", 27, 9),
VALUES ("David", "Sanderson", 25, 3);
