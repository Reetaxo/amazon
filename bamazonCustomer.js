var mysql = require("mysql");
var inquirer = require("inquirer");
var Table = require('cli-table3');

var connection = mysql.createConnection({
    host: "localhost",
    port: 8889,
    user: "root",
    password: "root",
    database: "bamazon_DB"
});

connection.connect(function(err) {
    if (err) throw err;
   start();

  });

//   var table = new Table({
//     head: ['TH 1 label', 'TH 2 label'],
// //   , colWidths: [100, 200]
// });
// Running this application will first display all of the items available for sale. Include the ids, names, and prices of products for sale.
function start(){ 
connection.query("SELECT * FROM products", function(err, res) {
    if (err) throw err;
  console.log("Welcome to Syreeta's Bamazon!");
  for (var i = 0; i < res.length; i++) {
      console.log("Item ID: " + res[i].item_id + "\nName of Product: " + res[i].product_name + "\nPrice: " + "$" + res[i].price + "\n♡♡♡♡");
  }
});
}

function start() {
    inquirer
      .prompt({
        name: "id",
        type: "input",
        message: "What is the ID of the product you would like to purchase?",
        validate: function (value) {
          if (!isNaN(value)) {
            return true;
          }
          return "Please let us know the Item ID!";
        }
      })
      .then(function (answer) {
        var id = answer.id;
        getStuff(id, selectQuantity);
      });
  }
  function getStuff(id, start) {
    var query = "SELECT * FROM products WHERE ?";
    connection.query(query, {
        item_id: id
      },
      function (err, results) {
        if (err) throw err;
        start(res[i]);
      })
  }
 
// The app should then prompt users with two messages.
// The first should ask them the ID of the product they would like to buy.
// The second message should ask how many units of the product they would like to buy.