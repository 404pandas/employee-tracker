// Third Party Modules
const cTable = require("console.table");
const inquirer = require("inquirer");
const mysql = require("mysql2");

const { employees, roles, departments } = require("./lib/queries");

// Connects user to existing database named employee_tracker_db
const connection = mysql.createConnection(
  {
    host: "127.0.0.1",
    user: "root",
    password: "rootroot",
    database: "employee_tracker_db",
    port: 3306,
  },
  console.log(`Connected to the City of Pawnee database!\n
    Please select an option below.`)
);

// Displays questions on main menu
function init() {
  inquirer
    // Prompt to select "View Employees"
    .prompt([
      {
        name: "menu",
        type: "list",
        message: "What would you like to do?",
        choices: ["View Employees", "View Roles", "View Departments", "Quit"],
      },
    ])
    // Redirects to specific questions based on menu answer
    .then((response) => {
      switch (response.menu) {
        //   function to display "View Employees"
        case "View Employees":
          connection.query(employees, function (err, results) {
            console.log("\n");
            console.table(results);
            init();
          });
          break;
        // function to display "View Roles"
        case "View Roles":
          connection.query(roles, function (err, results) {
            console.log("\n");
            console.table(results);
            init();
          });
          break;
        // function to display "View Departments"
        case "View Departments":
          connection.query(departments, function (err, results) {
            console.log("\n");
            console.table(results);
            init();
          });
          break;
        case "Quit":
          process.kill(process.pid, "SIGINT");
          break;
        default:
          console.log(`${response.role}`);
      }
    });
};

init()
