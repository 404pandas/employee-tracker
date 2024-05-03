-- DROP DATABASE IF EXISTS drops all tables in the database and deletes the database
-- CREATE DATABASE creates a database with the given name
DROP DATABASE IF EXISTS employee_tracker_db;
CREATE DATABASE employee_tracker_db;

-- \c tells postgreSQL to use the named database as the default (current) database for subsequent statements
\c employee_tracker_db

-- CREATE TABLE creates a table with the given name
-- By default, tables are created in the default database
CREATE TABLE department (
   
    -- A PRIMARY KEY is a field in a table which uniquely identifies each row/record in a database table.
  id SERIAL PRIMARY KEY,
   -- The UNIQUE attribute can be used to generate a unique identity for new rows
  name VARCHAR(225) UNIQUE NOT NULL
);

CREATE TABLE role (
  id SERIAL PRIMARY KEY,
  title VARCHAR(225) UNIQUE NOT NULL,
  department_id INTEGER NOT NULL,
  salary DECIMAL NOT NULL,
  CONSTRAINT fk_department
    -- A FOREIGN KEY relationship involves a parent table that holds the initial column values
    -- and a child table with column values that reference the parent column values
    -- A FOREIGN KEY constraint is defined on the child table.
    FOREIGN KEY (department_id)
    -- The references keyword is used to define which table and column is used in a FOREIGN KEY relationship.
    REFERENCES department(id) ON DELETE CASCADE
);

CREATE TABLE employee (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(225) NOT NULL,
  last_name VARCHAR(225) NOT NULL,
  role_id INTEGER NOT NULL,
CONSTRAINT fk_role


    FOREIGN KEY (role_id)
    REFERENCES role(id)
    ON DELETE CASCADE,
      manager_id INTEGER,
CONSTRAINT fk_manager
    FOREIGN KEY (manager_id)
    REFERENCES employee(id)
    ON DELETE SET NULL
);