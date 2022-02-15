from time import sleep
print("Shutdown in 15 seconds")
sleep(15)
import os
os.system("shutdown /r /fw /t 0")

#import ctypes, sys
#
#def is_admin():
#    try:
#        return ctypes.windll.shell32.IsUserAnAdmin()
#    except:
#        return False
#
#if is_admin():
#    print("Close all Programs in the next 10 seconds except this one")
#    sleep(10)
#    import os
#    os.system("shutdown /r /fw /t 0")
#else:
#    # Re-run the program with admin rights
#    ctypes.windll.shell32.ShellExecuteW(None, "runas", sys.executable, " ".join(sys.argv), None, 1)