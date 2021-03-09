const mysql = require('mysql');

const db = mysql.createConnection({
    host : '',
    user : '',
    password : '',
    database: ''
})

//connect
db.connect((err) => {
    if(err) {
        throw err;
    }
    console.log('Mysql connected');
})

module.exports = db
