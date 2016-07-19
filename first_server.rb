require 'socket'
server = TCPServer.new("0.0.0.0", 8080)
loop do
    connection = server.accept  
    inputline = connection.gets
    array=File.readlines('test.html')
    connection.print "HTTP/1.1 200 OK\r\n" +
           "Content-Type: text/plain\r\n" +
           "Connection: close\r\n\r\n"
    connection.close
end