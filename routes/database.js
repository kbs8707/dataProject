var mysql = require('mysql');
var connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'root',
  database: 'project'
});

connection.connect(function(err){
  if (err) throw err;
});

// connection.query('SELECT 1 + 1 AS solution', function (err, rows, fields) {
//   if (err) throw err

//   console.log('The solution is: ', rows[0].solution)
// })

// connection.end()

function getAccount() {
  connection.query("", function (err, rows, fields) {
    if (err) throw err;
    return rows;
  });

}


module.exports = connection;