http = require 'http'
url = require 'url'
func = (request, response) ->
    response.writeHead 200, {'Content-Type': "text/plain"}
    parser = url.parse request.url, true
    params = parser.query
    input = params.number
    numInput = Number input
    numOutput = Number Math.random()*numInput
    numOutput = numOutput.toFixed 0
    response.write numOutput
    response.end ''
    return
server = http.createServer func 
server.listen 80
console.log 'Running...'
