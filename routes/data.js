var express = require('express');
var router = express.Router();

/* GET home page. */
// router.get('/', function(req, res, next) {
  // res.render('data', { title: 'Data' });
// });

router.get('/', function(req, res, next) {
	req.getConnection(function(err, connection) {
		var query = connection.query('select * from mhs', function(err,rows)
		{
			if(err)
				var errornya = ("Error Selecting : %s",err);
			//req.flash('msg_error', errornya);
			res.render('data',{title:'Data View', data:rows, })
			
		});
	});
});

router.post('/cari', function(req, res, next) {
	carinama = req.body.carinama;
	req.getConnection(function(err, connection){
		var query = connection.query('select * from mhs where namalengkap like "%'+carinama+'%"', function(err,rows)
		{
			if(err)
				var errornya = ("Error selecting : %s", err);
			res.render('data',{ title: 'Data View', data:rows, });
		});
	});
});

module.exports = router;
