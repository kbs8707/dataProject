var mysql = require('mysql');
var connection = mysql.createConnection({
  host: 'localhost',
  user: 'user',
  password: 'password',
  database: 'dmsproj',
  multipleStatements: true
});

connection.connect(function(err){
  if (err) throw err;
});

function getAccount(data, callback) {
  let sql = "SELECT * FROM account";
  connection.query(sql, function (err, res) {
    if (err) throw err;
    console.log(res); 
    return callback(res);
  });

}

//View 1: Computes a join of at least three tables
//Displaying a book product, that is involved in a transaction
function view1(callback) {
  let sql = "SELECT book.title, product.BookID, transaction.transactionID FROM book INNER JOIN product ON book.bookID=product.bookID INNER JOIN transaction ON product.productID=transaction.transactionID";
  connection.query(sql, function (err, res) {
    if (err) throw err;
    console.log(res); 
    return callback(res);
  });
}

//View 2: Uses nested queries with the ANY or ALL operator and uses a GROUP BY clause
//Count the number of books that any author wrote that cost more than $500.
function view2(data, callback) {
  if (!data) data = 500;
  let sql = `SELECT count(*) FROM book WHERE bookID = ANY(SELECT bookID FROM product WHERE price > ${data})`;
  connection.query(sql, function (err, res) {
    if (err) throw err;
    console.log(res); 
    return callback(res);
  });
}

//View 3: A correlated nested query
//To find and display each time a seller has a review score of 8 or above.
function view3(data, callback) {
  if (!data) data = 8;
  let sql = `SELECT sellerinfo.sellerName, review.description, review.score FROM review, sellerinfo GROUP BY review.reviewID HAVING review.score > ${data} ORDER BY (review.score) DESC;`;
  connection.query(sql, function (err, res) {
    if (err) throw err;
    console.log(res); 
    return callback(res);
  });
}

//View 4: Uses a FULL JOIN
//Select all seller email addresses
function view4(callback) {
  let sql = "SELECT a.email FROM account a JOIN sellerinfo s ON a.accountID = s.accountID";
  connection.query(sql, function (err, res) {
    if (err) throw err;
    console.log(res); 
    return callback(res);
  });
}

//View 5: Uses nested queries with any of the set operations UNION, EXCEPT, or INTERSECT
//Find all the sellers, except for ones with a review
function view5(callback) {
  let sql = "SELECT sellerName FROM sellerinfo WHERE sellerID NOT IN (SELECT sellerID FROM review)";
  connection.query(sql, function (err, res) {
    if (err) throw err;
    console.log(res); 
    return callback(res);
  });
}

//View 6: Use count to find the number of unique books being sold
function view6(callback) {
  let sql = "SELECT COUNT(DISTINCT bookID) FROM product";
  connection.query(sql, function (err, res) {
    if (err) throw err;
    console.log(res); 
    return callback(res);
  });
}

//View 7: Use ANY to find books that cost less than 20 and in new condition
function view7(data, callback) {
  if (!data) data = 20;
  let sql = `SELECT title, author FROM book WHERE bookID = ANY (SELECT bookID FROM product WHERE price < ${data} AND product.condition = "NEW") `;
  connection.query(sql, function (err, res) {
    if (err) throw err;
    console.log(res); 
    return callback(res);
  });
}

//View 8: Use Max to find the highest costing product from a specific Author
function view8(data, callback) {
  if (!data) data = "J. K. Rowling";
  let sql = `SELECT MAX(product.price) FROM product, book WHERE book.bookID = product.bookID AND book.author LIKE '${data}'`;
  connection.query(sql, function (err, res) {
    if (err) throw err;
    console.log(res); 
    return callback(res);
  });
}

//View 9: Use ORDER BY to retrieve a list of authors that are in the store
function view9(callback) {
  let sql = "SELECT * FROM book ORDER BY author";
  connection.query(sql, function (err, res) {
    if (err) throw err;
    console.log(res); 
    return callback(res);
  });
}

//View 10: Use NOT IN to find books that are not on the shelf
function view10(callback) {
  let sql = `SELECT * FROM book WHERE bookID NOT IN (SELECT bookID FROM product)`;
  connection.query(sql, function (err, res) {
    if (err) throw err;
    console.log(res); 
    return callback(res);
  });
}

//Book API
function bookAPI(data, callback) {
  let sql = `SELECT * FROM book WHERE bookID = ${data}`;
  connection.query(sql, function (err, res) {
    if (err) throw err;
    console.log(res); 
    return callback(res);
  });
}

//Insert Account
//Return 1 if success, -1 otherwise
function addAccount(data, callback) {
  let sql = `INSERT INTO account VALUES (${data.accountID}, '${data.firstName}', '${data.lastName}', ${data.contactNum}, '${data.email}', '${data.password}', ${ccNum}, '${username}')`;
  connection.query(sql, function (err, res) {
    if (err) {
      return callback(-1);
    }
    console.log(res); 
    return callback(1);
  });
}

//Update Account
//Return 1 if success, -1 otherwise
//Updates email given accountID
function updateAccount(data, callback) {
  let sql = `UPDATE account SET email = '${data.email}' WHERE accountID = ${data.accountID}`;
  connection.query(sql, function (err, res) {
    if (err) {
      return callback(-1);
    }
    console.log(res); 
    return callback(1);
  });
}

//Remove Account
function removeAccount(data, callback) {
  let sql = `DELETE FROM account WHERE accountID = ${data}`;
  connection.query(sql, function (err, res) {
    if (err) throw err;
    console.log(res); 
    return callback(res);
  });
}

//View Account
function viewAccount(callback) {
  let sql = `SELECT accountID, firstName, lastName, contactNum, email, ccNum, username FROM account`;
  connection.query(sql, function (err, res) {
    if (err) throw err;
    console.log(res); 
    return callback(res);
  });
}

//View SellerInfo
function viewSeller(callback) {
  let sql = `SELECT * FROM sellerinfo`;
  connection.query(sql, function (err, res) {
    if (err) throw err;
    console.log(res); 
    return callback(res);
  });
}

//Insert SellerInfo
function insertSeller(data, callback) {
  let sql = `INSERT INTO sellerinfo VALUES (${data.sellerID}, '${data.sellerName}', ${data.verified}, ${data.accountID})`;
  connection.query(sql, function (err, res) {
    if (err) {
      return callback(-1);
    }
    console.log(res); 
    return callback(1);
  });
}

module.exports = {
  getAccount,
  view1,
  view2,
  view3,
  view4,
  view5,
  view6,
  view7,
  view8,  
  view9,
  view10,
  bookAPI,
  addAccount,
  updateAccount,
  removeAccount,
  viewAccount,
  viewSeller,
  insertSeller
};