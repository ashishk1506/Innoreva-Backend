var express = require('express');
var bodyParser = require('body-parser')
const mysql = require('mysql');
const ejs = require("ejs");
var app = express();
app.set('view engine', 'ejs');
var urlencodedParser = bodyParser.urlencoded({ extended: false });
app.use(express.static("public"));
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

app.get('/', function(req,res) {
    var text;
    var text_split;
    text = req.body.Name;
    // text = "अफसर अफसरों दर्पण"
    text_split = text.split(" "); //splits the text into array
    var text_length  
    text_length = Object.keys(text_split).length; // length of array

    db.query("SELECT * FROM urdu_to_hindi", function (err,result)
    {
        if(err)
        throw err

        var length_table = Object.keys(result).length
        var newstr = '';   //to store new string
        var oldstr = '';  //to store old string
        for(var j=0; j < text_length; j++)
        {
            datas = text_split[j]
            oldstr = oldstr + " " + datas  //pushing old text
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
        //  res.send({
        //      'old':oldstr,
        //      'new':newstr
        //  })
         res.render('index',{datas: {Converted : newstr, old: newstr2}}); //sending converted urdu to hindi sentence and urdu sentences
    })
})
 
// setting server
app.listen(PORT, () => {
    console.log(`listening to port ${PORT}`);
})

app.listen(3000,function(){
    console.log("server running!");
});