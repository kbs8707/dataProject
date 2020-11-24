var express = require('express');
var router = express.Router();
var db = require('./database');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index');
});

router.post('/handle', function(req, res, next) {
  let route = req.body.view;
  if (route == '/view1') res.redirect('http://localhost:3000/view1');
  else if (route == '/view2') res.redirect('http://localhost:3000/view2');
  else if (route == '/view3') res.redirect('http://localhost:3000/view3');
  else if (route == '/view4') res.redirect('http://localhost:3000/view4');
  else if (route == '/view5') res.redirect('http://localhost:3000/view5');
  else if (route == '/view6') res.redirect('http://localhost:3000/view6');
  else if (route == '/view7') res.redirect('http://localhost:3000/view7');
  else if (route == '/view8') res.redirect('http://localhost:3000/view8');
  else if (route == '/view9') res.redirect('http://localhost:3000/view9');
  else if (route == '/view10') res.redirect('http://localhost:3000/view10');
});

router.get('/view1', view1);
router.get('/view2', view2);
router.get('/view3', view3);
router.get('/view4', view4);
router.get('/view5', view5);
router.get('/view6', view6);
router.get('/view7', view7);
router.get('/view8', view8);
router.get('/view9', view9);
router.get('/view10', view10);

router.get('/bookapi', function(req, res, next) {
  let data = req.query.id;
  if (data != parseInt(data, 10)) res.render('bookapi', { data: "[]" });
  else {
    db.bookAPI(data, function(result){
      result = JSON.stringify(result)
      console.log(result);
      res.render('bookapi', { data: result });
    });
  }
});

function view1(req, res, next) {
  db.view1(function(result){
    console.log(result);
    res.render('view1', { data: result });
  });
}
function view2(req, res, next) {
  db.view2('', function(result){
    console.log(result);
    res.render('view1', { data: result });
  });
}
function view3(req, res, next) {
  db.view3('', function(result){
    console.log(result);
    res.render('view1', { data: result });
  });
}
function view4(req, res, next) {
  db.view4(function(result){
    console.log(result);
    res.render('view1', { data: result });
  });
}
function view5(req, res, next) {
  db.view5(function(result){
    console.log(result);
    res.render('view1', { data: result });
  });
}
function view6(req, res, next) {
  db.view6(function(result){
    console.log(result);
    res.render('view1', { data: result });
  });
}
function view7(req, res, next) {
  db.view7('', function(result){
    console.log(result);
    res.render('view1', { data: result });
  });
}
function view8(req, res, next) {
  db.view8('', function(result){
    console.log(result);
    res.render('view1', { data: result });
  });
}
function view9(req, res, next) {
  db.view9(function(result){
    console.log(result);
    res.render('view1', { data: result });
  });
}
function view10(req, res, next) {
  db.view10(function(result){
    console.log(result);
    res.render('view1', { data: result });
  });
}

// router.get('/account', function(req, res, next) {
//   db.viewAccount(function(result){
//     console.log(result);
//     res.render('index', { title: result[0].accountID });
//   });
// });

// router.get('/account/add', function(req, res, next) {
//   let data = req;
//   db.addAccount(data, function(result){
//     console.log(result);
//     if (result == 1) res.render('index', { title: result[0].accountID });
//   });
// });

// router.get('/account/update', function(req, res, next) {
//   let data = req;
//   db.updateAccount(data, function(result){
//     console.log(result);
//     if (result == 1) res.render('index', { title: result[0].accountID });
//   });
// });

// router.get('/account/remove', function(req, res, next) {
//   let data = req;
//   db.removeAccount(data, function(result){
//     console.log(result);
//     if (result == 1) res.render('index', { title: result[0].accountID });
//   });
// });

// router.get('/seller', function(req, res, next) {
//   db.viewSeller(function(result){
//     console.log(result);
//     db.viewAccount(function(accRes){
//       console.log(accRes);
//       res.render('index', { title: accRes.accountID });  
//     })
//   });
// });

// router.get('/seller/insert', function(req, res, next) {
//   let data = req;
//   db.insertSeller(function(result){
//     console.log(result);
//     res.render('index', { title: result[0].accountID });
//   });
// });

module.exports = router;
