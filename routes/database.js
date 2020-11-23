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

function getAccount(data, callback) {
  let sql = "SELECT * FROM account";
  connection.query(sql, function (err, res) {
    if (err) throw err;
    // console.log(res[0]); 
    return callback(res);
  });

}


module.exports = {
  getAccount
};