var express = require('express');
var bodyParser = require('body-parser')
const mysql = require('mysql');
var app = express();

app.set('view engine', 'ejs');
app.use(express.static("public"));
app.use(bodyParser.urlencoded({extended:true}))

const PORT = process.env.PORT || 4000

const db = mysql.createConnection({
    host : 'localhost',
    user : 'root',
    password : '',
    database: 'translate'
})

//connect
db.connect((err) => {
    if(err) {
        throw err;
    }
    console.log('Mysql connected');
})

app.get('/',function(req,res){
    res.render('index',{text_old:"" ,text_new:""})
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
        var newstr = '';   //to store new string
        for(var j=0; j < text_length; j++)
        {
            datas = text_split[j]
            var check = 0
            for(var i=0 ; i < length_table; i++)
            {
                if(result[i].Urdu === datas)   //if found in databse add translated word to newstr
                {
                    newstr = newstr + " " + result[i].Hindi
                    check = 1
                    break
                }
            }
            if(check == 0)  //if not found add the old word to newstr
            {
                newstr = newstr + " " + datas
            }       
        }
         res.render('index',{text_new:newstr,text_old:""})
    })
 
})

app.post('/revert',function(req,res){
    var text
    text = req.body.word
    console.log(text)
    res.render('index',{text_old:text,text_new:""})
})
 
// setting server
app.listen(PORT, () => {
    console.log(`listening to port ${PORT}`);
})
