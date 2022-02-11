import socket
  
# take the server name and port name
host = 'local host'
port = 5000
  
rlmsg = input("Enter Message: ")
print("Awaiting connection...")
# create a socket at server side
# using TCP / IP protocol
s = socket.socket(socket.AF_INET,
                  socket.SOCK_STREAM)
  
# bind the socket with server
# and port number
s.bind(('', port))
  
# allow maximum 1 connection to
# the socket
s.listen(1)
  
# wait till a client accept
# connection
c, addr = s.accept()
  
# display client address
print("CONNECTION FROM:", str(addr))
  
# send message to the client after
# encoding into binary string
 
msg =  rlmsg
c.send(msg.encode())
print("Success!")
# disconnect the server
c.close()