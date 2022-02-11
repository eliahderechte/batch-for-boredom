import smtplib
from prompt_toolkit import prompt

toaddress = input("Reciever Mail: ")
username = input("Your Mail: ")
password = prompt("Your Password: ", is_password = True)
message = input("Enter Message: ")
number = int(input('Number of Mails to send: '))
fromaddress = username

server = smtplib.SMTP('smtp.gmail.com:587')
server.starttls()
server.login(username,password)



for i in range (0,number):
  server.sendmail(fromaddress,toaddress,message)
  print(i+1,': messages sent')
print("---------------------")
print("mail sent.")

server.quit()