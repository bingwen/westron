var http = require('http'), url = require('url');

func = function(request, response){
    response.writeHead(200, {'Content-Type': "text/plain"});
    var params = url.parse(request.url, true).query, input = params.number;
    var numInput = new Number(input), numOutput = new Number(Math.random()*numInput).toFixed(0);
    response.write(numOutput);
    response.end();
}

http.createServer(func).listen(82);

console.log('Running...');
