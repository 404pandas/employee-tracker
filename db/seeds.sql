USE employee_tracker_db;

INSERT INTO department(name)
VALUES ('Parks and Recreation 1'),
       ('Police 2'),
       ('Fire 3'),
       ('Sewage 4'),
       ('Library 5'),
       ('Education 6'),
       ('Public Works 7'),
       ('Health 8'),
       ('City Council 9');

INSERT INTO role(title, salary, department_id)
VALUES ('Director of Parks and Rec 1', 100000, 1),
        ('Deputy Director of Parks and Rec 2', 90000, 1),
        ('Chief of Police 3', 100000, 2),
        ('Fire Chief 4', 100000, 3),
        ('Director of Sewage 5', 100000, 4),
        ('Library Director 6', 100000, 5),
        ('Library Deputy Director 7', 90000, 5),
        ('Director of Education 8', 100000, 6),
        ('Public Works Director 9', 10000, 7),
        ('Health Department Director 10', 100000, 8),
        ('Director of Animal Control 11', 100000, 9),
        ('Animal Controll Officer 12', 10000, 9),
        ('City Planner 13', 80000, 9),
        ('Park Ranger 14', 40000, 9),
        ('Administrator 15', 80000, 1),
        ('Security Guard 16', 80000, 9),
        ('City Manager 17', 120000, 9),
        ('Assistant City Manager 18', 110000, 9),
        ('Permits Security 19', 80000, 1),
        ('Office Manager 20', 80000, 9),
        ('City Attorney Assitant 21', 80000, 9),
        ('Councilman 22', 80000, 9),
        ('Court Stenographer 23', 80000, 9),
        ('Head of DMV 24', 90000, 9),
        ('Police Officer 25', 80000, 2),
        ('Sanitation Worker 26', 80000, 4),
        ('Maintenance Worker 27', 80000, 7);

INSERT INTO employee(first_name, last_name, role_id, manager_id)
VALUES 
        ('Chris 1', 'Traeger', 18, 1),
        ('Sir Benjamin 2', 'Wyatt', 18, 2),
        ('Ron', 'Swanson 3', 1, 3),
        ('Leslie 4', 'Knope', 2, NULL),
        ('Hugh 5', 'Trumple', 3, NULL),
        ('Al 6', 'Connor', 4, NULL),
        ('Joe 7', 'Fantringham', 5, NULL),
        ('Tammy 8', 'Swanson', 7, 2),
        ('Marlene 9', 'Griggs-Knope', 8, 2),
        ('Harold 10', 'Bauer', 9, 2),
        ('Ann 11', 'Perkins', 10, 2),
        ('April 12', 'Ludgate', 11, 2),
        ('Eugene 13', 'Burnout', 12, NULL),
        ('Harris 14', 'Burnout', 12, NULL),
        ('Brett 15', 'Burnout', 12, 11),
        ('Mark 16', 'Brendanawicz', 13, 2),
        ('Carl 17', 'Lorthner', 14, 2),
        ('Tom 2', 'Haverford', 15, 4),
        ('Sir Andrew Maxwell 19', 'Dwyer', 16, 2),
        ('Donna 20', 'Meagle', 19, 4),
        ('Gerald 21', 'Gergich', 20, 4),
        ('Garry 22', 'Gergich', 20, 4),
        ('Jerry 23', 'Gergich', 20, 4),
        ('Larry 24', 'Gergich', 20, 4),
        ('Lenny 25', 'Gergich', 20, 4),
        ('Terry 26', 'Gergich', 20, 4),
        ('Mailman 27', 'Gergich', 20, 4),
        ('Kyle 28', 'Client', 21, 4),
        ('Jeremy 29', 'Jamm', 22, 4),
        ('Douglass 30', 'Howser', 22, 4),
        ('Ethel 31', 'Beavers', 23, 2),
        ('Dawn 32', 'Krink', 24, 2),
        ('Len 33', 'Hugeff', 25, 5),
        ('Dewey 34', 'Burnout', 26, 7),
        ('George 35', 'Williams', 27, 9),
        ('David 36', 'Sanderson', 25, 5);
