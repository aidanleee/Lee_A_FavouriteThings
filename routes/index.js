var express = require('express');
var router = express.Router();

var connect = require('../utils/sqlConnect'); // include database connection

/* GET home page. */
router.get('/', function(req, res, next) {
  // do a database query and get some of the hero data
  connect.query(`SELECT name, title, img FROM activity`, (err, result) => {
    if (err) {
      throw err;
      console.log(err);
    } else {
      console.log(result);
      res.render('index', { activities: result, title: "dick" });
    }
  });
});

router.get('/:activity', function(req, res, next) { 
  connect.query(`SELECT * FROM activity WHERE name="${req.params.activity}"`, (err, result) => {
    if (err) {
      throw err;
      console.log(err);
    } else {
      console.log(result);
      res.render('details', { activityData: result[0] });
    }
  });
});

module.exports = router;
