// load the http module
var http = require('http');

// configure our HTTP server
var server = http.createServer(function (request, response) {
  response.writeHead(200, {"Content-Type": "text/plain"});
  response.end("Yepas!");  
});

// listen on localhost:8001
server.listen(8001);
console.log("Server listening at http://127.0.0.1:8001/");