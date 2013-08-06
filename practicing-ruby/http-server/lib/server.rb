require 'socket'

server = TCPServer.new('localhost', 2345)

loop do
  socket = server.accept

  request = socket.gets

  STDERR.puts request

  response = "Hello, world!\n"

  socket.print "HTTP/1.1 200 OK\r\n" +
               "Content-Type: text/html\r\n" +
               "Content-Length: #{response.bytesize}\r\n" +
               "Connection: close\r\n"

  socket.print "\r\n"

  socket.print response

  socket.close
end
