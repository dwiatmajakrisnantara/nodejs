var express = require('express');
var router = express.Router();

/* GET Form value. */
router.post('/', function(req, res, next) {
	kodemakul = req.body.kode_makul;
	makul = req.body.nama_makul;
	sks = req.body.jml_sks;
	semester = req.body.semester;
	req.getConnection(function(err, connection){
		let data = {kode_makul: kodemakul, nama_makul: makul, jml_sks: sks, semester: semester};
		let sql = "INSERT INTO makul SET ?";
		let query = connection.query(sql, data,(err, results) => {
			if(err) throw err;
		res.redirect('/datamakul');
		})
	});
});

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('formmakul', { title: 'Form Input' });
});

module.exports = router;
