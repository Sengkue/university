var mysql = require('mysql');  
var con = mysql.createConnection({  
host: "localhost",  
user: "root",  
password: "",  
database: "javatpoint"  
});  
con.connect(function(err) {  
if (err) throw err;  
console.log("Connected!");  
var sql = "ALTER TABLE employee2 ADD COLUMN salary INT(10)";  
con.query(sql, function (err, result) {  
if (err) throw err;  
console.log("Table altered");  
});  
});  