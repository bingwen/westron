http = require 'http'
fs = require 'fs'
sio = require 'socket.io'

handler = (req, res) ->
  fs.readFile __dirname+'/node3_index.html', (err, data)->
    if err
      res.writeHead 500
      return res.end('Error loading index.html')
    else
      res.writeHead 200
      return res.end(data)
  return

app = http.createServer handler

io = sio.listen app

io.sockets.on 'connection', (socket) ->
  socket.emt 'news', {'msg': 'hello'}
  socket.on 'my other event', (data) ->
    console.log data
    return
  return
