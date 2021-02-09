var express = require('express');

var bodyParser = require('body-parser')


var urlencodedParser = bodyParser.urlencoded({ extended: false });

const mysql = require('mysql');

//create connection


const db = mysql.createConnection({
    host : 'localhost',
    user : 'root',
    password : '',
    database: 'nodemysql'
});

//connect

db.connect((err) => {
    if(err) {
        throw err;
    }
    console.log('Mysql connected');
});

var app = express();

//create database
app.get('/createdb', (req, res) => {
    let sql = 'CREATE DATABASE nodemysql';
    db.query(sql, (err, result) => {
        console.log(result);
        res.send('database created...');
    });
});

//create table
app.get('/createpoststable', (req,res) => {
    let sql = 'CREATE TABLE posts (urdu VARCHAR(255), hindi VARCHAR(255), PRIMARY KEY(urdu))';
    db.query(sql, (err,result) => {
        if(err) throw err;
        console.log(result);
        res.send('Post table created..');
    });
});


app.set('view engine', 'ejs'); //setting view engine

app.get('/', function(req,res)  {
    res.render('index');
});

app.get('/contact', function(req,res){
    res.render('contact');
});

app.post('/contact', urlencodedParser, function(req,res) {
    var str;
    var str3,str4;
    str = req.body.Name;
    str3 = str.split(" ");
    console.log(str3);
    var length2;
    length2 = Object.keys(str3).length;
    db.query("SELECT * FROM posts", function (err,result,fields)
    {
       
        if(err)
        throw err;
        var test = result;
        var length = Object.keys(test).length;
        for(var i=0 ;i < length; i++)
        {
            console.log(result[i]);
        }
        var newstr = "";
        var newstr2 = "";
        for(var j=0; j < length2; j++)
        {
            datas = str3[j];
            var check = 0;
            newstr2 =newstr2 + " " + datas;
            for(var i=0 ; i < length; i++)
            {
                //console.log(result[i].urdu,datas);
                if(result[i].urdu === datas)
                {
                   // console.log(result[i].urdu);
                   // console.log(result[i].hindi);
                    newstr =newstr + " " + result[i].hindi;
                    check=1;
                    break;
                }
            }
            if(check === 0)
            {
                newstr =newstr + " " + datas;
            }
        }
        console.log(newstr);
        console.log(newstr2);

        res.render('contact',{datas: {Converted : newstr, old: newstr2}}); //sending converted urdu to hindi sentence and urdu sentences
    });
    
});



    /*str3.map(async(ele) => {
        console.log(ele);
        let sql1 = 'select *from posts where urdu = ?';
        let val = ele;
        let cd =  await db.query(sql1, [val], function (err,rows,fields) {
            console.log(rows[1]);
            if(err)
            throw err;
            res.send('checked');
        });
    });*/

/*app.get('/addposts', (req,res) => {
    let post = {urdu: 'NIT ', hindi: '4'};
    let sql = 'INSERT INTO posts SET urdu = ?';
    let query = db.query(sql, post, (err,result) => {
        console.log(result);
        res.send('post 1 added');
    });
});*/
 
//setting server
app.listen('4000', () => {
    console.log('listening to port 4000');
});