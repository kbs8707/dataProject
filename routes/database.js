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
    console.log(res); 
    return callback(res);
  });

}

//View 1
function getBookInTransaction(callback) {
  let sql = "SELECT book.title, product.BookID, transaction.transactionID FROM book INNER JOIN product ON book.bookID=product.bookID INNER JOIN transaction ON product.productID=transaction.transactionID";
  connection.query(sql, function (err, res) {
    if (err) throw err;
    console.log(res); 
    return callback(res);
  });
}

//View 2
function getCostHigher(data, callback) {
  if (!data) data = 500;
  let sql = "SELECT count(*) FROM book WHERE bookID = ANY(SELECT bookID FROM product WHERE price > " + data;
  connection.query(sql, function (err, res) {
    if (err) throw err;
    console.log(res); 
    return callback(res);
  });
}

//View 3
function aboveScore(data, callback) {
  if (!data) data = 8;
  let sql = `SELECT sellerinfo.sellerName, review.description FROM review, sellerinfo WHERE review.score =(SELECT review.score FROM review WHERE review.score > ${data})`;
  connection.query(sql, function (err, res) {
    if (err) throw err;
    console.log(res); 
    return callback(res);
  });
}

//View 4
function sellerEmail(callback) {
  let sql = "SELECT a.email FROM account a FULL JOIN sellerinfo s ON a.accountID = s.accountID";
  connection.query(sql, function (err, res) {
    if (err) throw err;
    console.log(res); 
    return callback(res);
  });
}

//View 5
function sellerHasReview(callback) {
  let sql = "SELECT sellerName FROM sellerinfo EXCEPT (SELECT sellerName FROM review)";
  connection.query(sql, function (err, res) {
    if (err) throw err;
    console.log(res); 
    return callback(res);
  });
}

//View 6
function uniqueBookCount(callback) {
  let sql = "SELECT count(*) FROM (SELECT DISTINCT bookID FROM product)";
  connection.query(sql, function (err, res) {
    if (err) throw err;
    console.log(res); 
    return callback(res);
  });
}

//View 7
function cheapBook(data, callback) {
  if (!data) data = 20;
  let sql = `SELECT title, author FROM book WHERE bookID = ANY (SELECT bookID FROM product WHERE (price < ${data}) AND condition = "New")`;
  connection.query(sql, function (err, res) {
    if (err) throw err;
    console.log(res); 
    return callback(res);
  });
}

//View 8
function authorMax(data, callback) {
  if (!data) data = "J. K. Rowling";
  let sql = `SELECT MAX(product.price) FROM product, book WHERE book.bookID = product.bookID AND book.author = ${data}`;
  connection.query(sql, function (err, res) {
    if (err) throw err;
    console.log(res); 
    return callback(res);
  });
}

//View 9
// function orderedAuthor(callback) {
//   let sql = "SELECT COUNT(*) FROM book ORDER BY autho"
// }

//View 10
function notSale(callback) {
  let sql = `SELECT * FROM book WHERE bookID NOT IN (SELECT bookID FROM product)`;
  connection.query(sql, function (err, res) {
    if (err) throw err;
    console.log(res); 
    return callback(res);
  });
}

module.exports = {
  getAccount,
  getBookInTransaction,
  getCostHigher,
  aboveScore,
  sellerEmail,
  sellerHasReview,
  uniqueBookCount,
  cheapBook,
  authorMax,
  notSale
};