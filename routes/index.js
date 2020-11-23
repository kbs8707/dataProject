var express = require('express');
var router = express.Router();
var db = require('./database');

/* GET home page. */
router.get('/', function(req, res, next) {

  db.getAccount('', function(result){
    console.log(out);
    res.render('index', { title: result[0].accountID });
  });


});

module.exports = router;
