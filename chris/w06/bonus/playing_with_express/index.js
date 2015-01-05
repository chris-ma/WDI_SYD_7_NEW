'use strict';

var express = require('express'); // require express
var bodyParser = require('body-parser'); //middleware
var app = express(); // return a new express app
var name;

app.use(bodyParser.urlencoded({ extended: true})); //using the middleware

app.get('/', function(req, res){   //req - request res- response
res.send("Hello World" );
});

app.post('/', function(req, res){

  res.send("Hello" + req.body.name);
});

var server = app.listen(3000, function () {   /// setting up a server for the app to be listened to 

  var host = server.address().address;
  var port = server.address().port;

  console.log('Example app listening at http://%s:%s', host, port);

});