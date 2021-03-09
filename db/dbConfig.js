const mysql = require('mysql');

const db = mysql.createConnection({
    host : 'benpmbp84xkrym4yz3bz-mysql.services.clever-cloud.com',
    user : 'u1hql9occut1cyai',
    password : 'kqeSj0Rc7xBCDdo7L5FL',
    database: 'benpmbp84xkrym4yz3bz'
})

//connect
db.connect((err) => {
    if(err) {
        throw err;
    }
    console.log('Mysql connected');
})

module.exports = db