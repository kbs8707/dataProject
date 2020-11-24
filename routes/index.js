var express = require('express');
var router = express.Router();
var db = require('./database');

/* GET home page. */
router.get('/', function(req, res, next) {

  db.getAccount('', function(result){
    console.log(result);
    res.render('index', { title: result[0].accountID });
  });
});

router.get('/view1', function(req, res, next) {

  db.view1(function(result){
    console.log(result);
    res.render('index', { title: result[0].accountID });
  });
});

router.get('/view2', function(req, res, next) {

  db.view2('', function(result){
    console.log(result);
    res.render('index', { title: result[0].accountID });
  });
});

router.get('/view3', function(req, res, next) {

  db.view3('', function(result){
    console.log(result);
    res.render('index', { title: result[0].accountID });
  });
});

router.get('/view4', function(req, res, next) {

  db.view4(function(result){
    console.log(result);
    res.render('index', { title: result[0].accountID });
  });
});

router.get('/view5', function(req, res, next) {

  db.view5(function(result){
    console.log(result);
    res.render('index', { title: result[0].accountID });
  });
});

router.get('/view6', function(req, res, next) {

  db.view6(function(result){
    console.log(result);
    res.render('index', { title: result[0].accountID });
  });
});

router.get('/view7', function(req, res, next) {

  db.view7('', function(result){
    console.log(result);
    res.render('index', { title: result[0].accountID });
  });
});

router.get('/view8', function(req, res, next) {

  db.view8('', function(result){
    console.log(result);
    res.render('index', { title: result[0].accountID });
  });
});

router.get('/view9', function(req, res, next) {

  db.view9(function(result){
    console.log(result);
    res.render('index', { title: result[0].accountID });
  });
});

router.get('/view10', function(req, res, next) {

  db.view10('', function(result){
    console.log(result);
    res.render('index', { title: result[0].accountID });
  });
});

router.get('/bookapi', function(req, res, next) {
  let data = req.query.id;
  db.bookAPI(data, function(result){
    console.log(result);
    res.render('index', { title: result[0].accountID });
  });
});

router.get('/account', function(req, res, next) {
  db.viewAccount(function(result){
    console.log(result);
    res.render('index', { title: result[0].accountID });
  });
});

router.get('/account/add', function(req, res, next) {
  let data = req;
  db.addAccount(data, function(result){
    console.log(result);
    if (result == 1) res.render('index', { title: result[0].accountID });
  });
});

router.get('/account/update', function(req, res, next) {
  let data = req;
  db.updateAccount(data, function(result){
    console.log(result);
    if (result == 1) res.render('index', { title: result[0].accountID });
  });
});

router.get('/account/remove', function(req, res, next) {
  let data = req;
  db.removeAccount(data, function(result){
    console.log(result);
    if (result == 1) res.render('index', { title: result[0].accountID });
  });
});

router.get('/seller', function(req, res, next) {
  db.viewSeller(function(result){
    console.log(result);
    db.viewAccount(function(accRes){
      console.log(accRes);
      res.render('index', { title: accRes.accountID });  
    })
  });
});

router.get('/seller/insert', function(req, res, next) {
  let data = req;
  db.insertSeller(function(result){
    console.log(result);
    res.render('index', { title: result[0].accountID });
  });
});

module.exports = router;
