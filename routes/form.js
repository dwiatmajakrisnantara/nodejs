var express = require('express');
var router = express.Router();

/* GET Form value. */
router.post('/', function(req, res, next) {
	nim = req.body.nim;
	namalengkap = req.body.namalengkap;
	prodi = req.body.prodi;
	email = req.body.email;
	alamat = req.body.alamat;
	tgllahir = req.body.tgllahir;
	req.getConnection(function(err, connection){
		let data = {nim: nim, namalengkap: namalengkap, prodi: prodi, email: email, alamat: alamat, tgl_lahir: tgllahir};
		let sql = "INSERT INTO mhs SET ?";
		let query = connection.query(sql, data,(err, results) => {
			if(err) throw err;
		res.redirect('/data');
		})
	});
});

router.post('/updates', function(req, res, next) {
	updatenim = req.body.updatenim;
	nim = req.body.nim;
	namalengkap = req.body.namalengkap;
	prodi = req.body.prodi;
	email = req.body.email;
	alamat = req.body.alamat;
	tgllahir = req.body.tgllahir;
	req.getConnection(function(err, connection){
		let sql = "UPDATE mhs SET nim='"+nim+"',namalengkap='"+namalengkap+"',prodi='"+prodi+"',email='"+email+"',alamat='"+alamat+"',tgl_lahir='"+tgllahir+"' WHERE nim = ?";
		let query = connection.query(sql, updatenim, (err, results) => {
			if(err) throw err;
		res.redirect('/data');
		})
	});
});

router.get('/edit/:id', function(req, res, next) {
  req.getConnection(function(err, connection){
	  var query = connection.query('select * from mhs where nim = ?', [req.params.id],
	  function(err,rows)
	  {
		  if(err)
			  var errornya = ("Error selecting : %s", err);
		  res.render('editform',{ title: 'Data View', data:rows, });
	 });
  });
});

router.get('/hapus/:id', function(req, res, next) {
  req.getConnection(function(err, connection){
	  var query = connection.query('delete from mhs where nim = ?', [req.params.id],
	  function(err,rows)
	  {
		  if(err)
			  var errornya = ("Error selecting : %s", err);
		  res.render('data');
	 });
  });
});



/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('form', { title: 'Form Input' });
});

module.exports = router;
