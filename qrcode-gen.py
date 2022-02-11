import qrcode
from tkinter import *
import os

qrinp = input("Enter message to convert into QR code: ")
ind = ("qrcode69420.jpg")
img = qrcode.make(qrinp)
img.save(ind)

ws = Tk()

img = PhotoImage(file=ind)
Label(
    ws,
    image=img
).pack()

ws.mainloop()

os.remove(ind)