'use strict';

const express = require('express');

const PORT = 8080;
const HOST = '0.0.0.0';

//APP
const app = express();

app.get('/',(req,res)=>{
    res.send('Working...!');
});

app.listen(PORT,HOST);
console.log(`App Running on http://${HOST}:${PORT}`);



