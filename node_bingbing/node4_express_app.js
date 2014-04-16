var express = require('express'), app = express();

app.get('/', function(req, res){
    res.send('Hello World');
    console.log('request from client');
});

var server = app.listen(80, function() {
    console.log('Listening on port %d', server.address().port);
});
