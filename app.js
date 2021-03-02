var express = require('express');
var bodyParser = require('body-parser')
const mysql = require('mysql');
var app = express();

app.set('view engine', 'ejs');
app.use(express.static(__dirname + '/public'));
app.use(bodyParser.urlencoded({extended:true}))

const PORT = process.env.PORT || 4000

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

app.get('/',function(req,res){
    res.render('index',{text_new:[]})
})

app.post('/convert', function(req,res) {
    
    var text;
    var text_split;
    text = req.body.word;
    // text = "अफसर अफसरों दर्पण"
    text_split = text.split(" "); //splits the text into array
    var text_length  
    text_length = Object.keys(text_split).length; // length of array

    db.query("SELECT * FROM urdutohindi", function (err,result)
    {
        if(err)
        throw err
        var length_table = Object.keys(result).length
        var newstr = []; 
          //to store new string
        for(var j=0; j < text_length; j++)
        {
            datas = text_split[j]
            var check = 0
            for(var i=0 ; i < length_table; i++)
            {
                if(result[i].Urdu === datas)   //if found in databse add translated word to newstr
                {
                    var newarr = result[i].Hindi.split('/')
                    newstr.push({
                        hindi : newarr,
                        urdu : result[i].Urdu,
                        status : 1
                    })
                   
                    check = 1
                    break
                }
            }
            if(check == 0)  //if not found add the old word to newstr
            {
               var newdata = []
               newdata.push(datas)
               newstr.push({
                   hindi : newdata,
                   urdu : " ",
                   status: 0
               })
            }       
        }
        console.log(newstr)
         res.render('index',{text_new:newstr})
    })
 
})

app.get('/user_controller',(req,res)=>{
    res.render('user_controller', {message: "default"});
})

app.post('/add',function(req,res){
    let addUrdu,addHindi;
    addUrdu = req.body.addUrdu;
    console.log(addUrdu);
    addHindi = req.body.addHindi;
    var q = 'SELECT * FROM urdutohindi WHERE Urdu = ? OR Hindi = ? ' ;
    db.query(q,[addUrdu,addHindi],(err,result) => {
        console.log("RESULT",result);
        let arr;
        arr = Object.keys(result).length;
        console.log(arr,arr.type);
        let str = arr > 0 ? "greater than zero" : "zero";
        console.log(str);
        if(str == "zero")
        {
            console.log(addUrdu,addHindi);
            db.query('INSERT INTO urdutohindi (Urdu,Hindi) VALUES (?,?)',[addUrdu,addHindi],(err,result)=>{
                console.log(result);
                if(err)
                console.log("error");
                else
                {
                    console.log("rendered");
                    res.render('user_controller', {message: 'Data added'});
                }
            });
        }
        else
        {
            res.render('user_controller',{message: 'This data is already added'});
        }
    })
    
})

app.post('/updateUrdu',function(req,res){
    let updateUrdu = req.body.updateUrdu
    let Hindi = req.body.Hindi
    db.query('SELECT * FROM urdutohindi WHERE Hindi = ?',[Hindi],(err,result)=>{
        if(err)
        console.log(err)
        else
        { 
           if(Object.keys(result).length > 0)
            {
               db.query('SELECT * FROM urdutohindi WHERE Urdu = ?',[updateUrdu],(err,result1)=>{
                   if(err)
                   console.log(err)
                   if(Object.keys(result1).length > 0)
                   res.render('user_controller',{message: 'Urdu word already exist'})
                   else{
                    db.query('UPDATE urdutohindi SET Urdu = ? WHERE Hindi = ?',[updateUrdu,Hindi],(err,result2)=>{
                        if(err)
                        console.log(err)
                        else
                        res.render('user_controller',{message: 'Data updated'})
                        })
                   }
                   
               })
               
               
            }
            else
            {
                res.render('user_controller',{message: 'No valid match'})
            }
        }
    })
   
})

app.post('/updateHindi',function(req,res){
    let Urdu = req.body.Urdu
    let updateHindi = req.body.updateHindi

    db.query('SELECT * FROM urdutohindi WHERE Urdu = ?',[Urdu],(err,result)=>{
        if(err)
        console.log(err)
        else
        {
           if(Object.keys(result).length > 0)
            {
                db.query('SELECT * FROM urdutohindi WHERE Hindi = ?',[updateHindi],(err,result1)=>{
                    if(err)
                    console.log(err)
                    if(Object.keys(result1).length > 0)
                    res.render('user_controller',{message: 'Hindi word already exist'})
                    else{
                        db.query('UPDATE urdutohindi SET Hindi = ? WHERE Urdu = ?',[updateHindi,Urdu],(err,result)=>{
                            if(err)
                            console.log(err)
                            else
                            res.render('user_controller',{message: 'Data updated'})
                            })
                    }
                })
              
            }
            else
            {
                res.render('user_controller',{message: 'No valid match'})
            }
        }
    })

})
// setting server
app.listen(PORT, () => {
    console.log(`listening to port ${PORT}`);
})