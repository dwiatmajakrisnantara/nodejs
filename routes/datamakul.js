var express = require('express');
var router = express.Router();

/* GET home page. */
// router.get('/', function(req, res, next) {
  // res.render('data', { title: 'Data' });
// });

router.get('/', function(req, res, next) {
	req.getConnection(function(err, connection) {
		var query = connection.query('select * from makul', function(err,rows)
		{
			if(err)
				var errornya = ("Error Selecting : %s",err);
			//req.flash('msg_error', errornya);
			res.render('datamakul',{title:'Data View', data:rows, })
			
		});
	});
});

module.exports = router;
