var express = require('express');
const path=require('path');

const app= express();

//Home route
app.get('/',function(req,res){
res.send('Add files');
});

app.listen(3000, function(){
    console.log('Server started on port 3000');
});