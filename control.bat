@echo off

title Your mom lol

if not "%1" == "max" start /MAX cmd /c %0 max & exit/b

goto firstdec


:yellow
color 6
goto mainmenu

:blue
color 1
goto mainmenu

:brightblue
color 3
goto mainmenu

:white
color 7
goto mainmenu

:red
color 4
goto mainmenu

:purple
color 5
goto mainmenu

:green
color 2
goto mainmenu


:firstdec

type cmdtext.txt

timeout /t 1 >nul

echo I do not take any responsibility for your actions and what you do with this script
echo ----------------------------------------------------------------------------------

set /p mainsel="Do you agree? [y/n]: "

if %mainsel%==y goto mainmenu
if %mainsel%==n exit
else {
     exit
}

:mainmenu
cls

type cmdtext.txt

timeout /t 1 >nul

echo Python scripts do not work when this script is being run as admin
echo .
echo You can always go back by typing 'exit' if there is a prompt
echo .
echo You can leave the main menu (where you are right now) by typing '00' or 'exit'
echo .
echo Don't change the folder of anything that has been done by this script. 
echo .
echo If you do so the code won't most likely work properly

echo --------------------------------------------------------------------------

net session >nul 2>&1
if %errorlevel% == 0 (
     echo Administrator permissions available
) else (
     echo Administrator permissions not available
)


echo ---------------------------------------------------------------------------------------------
echo 01 Wifi-Tools
echo 02 IP-Tools  
echo 03 MAC Address  
echo 04 System-Tools
echo 05 Email [buggy]
echo 06 List of easy, basic commands in Windows CMD
echo 07 Authorize Admin permission, which is required for certain tools/commands
echo 08 Crash Computer/Call in a Bluescreen (may harm your operating system;admin rights required)
echo 09 Start Remote Desktop 
echo 10 Websites-/tools
echo 11 Watch Star Wars
echo 12 Create Matrix
echo 13 Send Messages per IP
echo 14 Calculator
echo 15 Mail Bomber
echo 16 Install Python 3.10 and/or needed extensions (required for Tool 13, 14, 15, 18)
echo 17 Install screen mirroring application for Windows 10 (scrcpy.exe)
echo 18 QR Code generator
echo 19 Directly Boot to BIOS [Admin required, don't know why tbh but doesn't work otherwise]
echo - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
echo + Change color by typing: 'yellow', 'blue', 'brightblue', 'white', 'red', 'purple', 'green' 
echo ----------------------------------------------------------------------------------------------
echo 98 Uninstall
echo 99 Contact me on Instagram for help, etc.
echo ----------------------------------------------------------------------------------------------

set /p PANELDECISION="Select: " 



REM COLOR
if %PANELDECISION%==yellow goto yellow

if %PANELDECISION%==blue goto blue

if %PANELDECISION%==brightblue goto brightblue

if %PANELDECISION%==white goto white

if %PANELDECISION%==red goto red

if %PANELDECISION%==purple goto purple

if %PANELDECISION%==green goto green



REM WIFI
if %PANELDECISION%==1 goto wifimenu
if %PANELDECISION%==01 goto wifimenu

REM IPMENU
if %PANELDECISION%==2 goto ipmenu
if %PANELDECISION%==02 goto ipmenu

REM MAC
if %PANELDECISION%==3 goto mac
if %PANELDECISION%==03 goto mac

REM SYSTEMINFO
if %PANELDECISION%==4 goto sysmenu
if %PANELDECISION%==04 goto sysmenu

REM EMAIL
if %PANELDECISION%==5 goto email
if %PANELDECISION%==05 goto email

REM CMDCOMMANDS
if %PANELDECISION%==6 goto cmdcommands
if %PANELDECISION%==06 goto cmdcommands

REM ADMIN
if %PANELDECISION%==7 goto getadmin
if %PANELDECISION%==07 goto getadmin

REM SYSCRASH
if %PANELDECISION%==8 goto syscrash
if %PANELDECISION%==08 goto syscrash

REM REMOTEDESKTOP
if %PANELDECISION%==9 goto remotedesktop
if %PANELDECISION%==09 goto remotedesktop

REM WEBPAGES/TOOLS
if %PANELDECISION%==10 goto webtools

REM STARWARS
if %PANELDECISION%==11 goto starwars

REM MATRIX
if %PANELDECISION%==12 goto matrix

REM MESSENGER
if %PANELDECISION%==13 goto messenger

REM CALCULATOR
if %PANELDECISION%==14 goto calculator

REM MAILBOMBER
if %PANELDECISION%==15 goto mailbomber

REM PYTHON3.10
if %PANELDECISION%==16 goto pythoninstall

REM SCRCPY
if %PANELDECISION%==17 goto scrcpy

REM QRCODE
if %PANELDECISION%==18 goto qrcode

REM BIOSBOOT
if %PANELDECISION%==19 goto biosboot

REM UNINSTALL
if %PANELDECISION%==98 goto uninstall

REM CONTACT
if %PANELDECISION%==99 start "chrome.exe" "https://www.instagram.com/eliah.obgt" && goto mainmenu

REM EXIT
if %PANELDECISION%==00 exit
if %PANELDECISION%==exit exit

else (
exit
)





REM WIFI------------------------------------------------------------------
:wifimenu

cls

type wifitools.txt

echo 01 Gather Wifi Information [wireless networks only]
echo 02 Show Netstats
echo 03 Trace Route

set /p wifidec="Select: "

if %wifidec%==1 goto wifistats
if %wifidec%==01 goto wifistats
if %wifidec%==2 goto netstats
if %wifidec%==02 goto netstats
if %wifidec%==3 goto traceroutec
if %wifidec%==03 goto traceroutec
if %wifidec%== exit goto mainmenu


REM WIFISTATS>>>>>>>>>>>>>>>>>>>>>>>>>>

timeout /t 1 >nul


:wifistats

cls

type wifitools.txt

:start1


set /p INPUT="Enter Wifi SSID: "

if %INPUT%==exit goto wifimenu

netsh wlan show profile "%INPUT%" key=clear

if errorlevel 1 goto redo

echo Done.

pause

goto wifimenu

:redo


echo ------------------------------------------------------------------------------------------------------
echo That didn't work, check if you have any typing mistakes and if you are connected to a WIRELESS network
echo ------------------------------------------------------------------------------------------------------


goto start1



REM NETSTATS>>>>>>>>>>>>>>>>>>>>>>

:netstats

cls

type wifitools.txt

echo You cannot go back if the job started, you can only close the script entirely.
set /p NETSTATDEC="Do you want to continue? [y/n]: "

if %NETSTATDEC%==y goto netst
if %NETSTATDEC%==n goto wifimenu
if %NETSTATDEC%==exit goto wifimenu


:netst

cls

type wifitools.txt

echo Be patient, this may take some time

timeout /t 1 >nul

netstat && arp -a


pause


goto wifimenu



REM TRACEROUTEC

:traceroutec

cls 

type wifitools.txt

echo You cannot go back if the job started, you can only close the script entirely.
set /p traceroutedecc="Do you want to continue? [y/n]: "

if %traceroutedecc%==y goto tracertc
if %traceroutedecc%==n goto wifimenu
if %traceroutedecc%==exit goto wifimenu

:tracertc

cls

type wifitools.txt

set /p tracertdec="Enter Domain/Website (without http/https or www): "

if %tracertdec%==exit goto wifimenu

tracert %tracertdec%

pause

goto wifimenu


REM IP MENU----------------------------------------------------------------

:ipmenu

cls

type iptools.txt

echo 01 Gather Website/Domain's IP Address
echo 02 Find out your IP configuration
echo --------------------------------------


set /p IPDEC="Select: "


if %ipdec%==exit goto mainmenu




REM IPMENU001~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
if %ipdec% EQU 1 goto webping 
if %ipdec% EQU 01 goto webping




REM IPMENU002~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
if %ipdec% EQU 2 goto selfping 
if %ipdec% EQU 02 goto selfping



REM IP001>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
:webping 

:start2

cls

type iptools.txt

set /p DOMAIN="Enter website to ping(without http/https and www): "

if %DOMAIN%==exit goto ipmenu

ping %DOMAIN%

pause 

goto ipmenu



REM IP002>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
:selfping

ipconfig /release && ipconfig /all

pause

goto ipmenu






REM MAC---------------------------------------------------------------------------
:mac

cls

echo Gathering Address ...

timeout /t 2 >nul

getmac

pause

goto mainmenu





REM SYSmenu-----------------------------------------------------------------------
:sysmenu

cls

type systemtools.txt

echo 01 Gather Systeminfo
echo 02 Check powerusage [admin privileges required]
echo 03 Check Systemfiles for any problems [admin privileges required]
echo 04 List all users on this Device
echo 05 Show Host-/Computername
echo 06 Create Systemimage [admin privileges required]

set /p sysmenudec="Select: "


if %sysmenudec%==1 goto sysinfo1
if %sysmenudec%==01 goto sysinfo1
if %sysmenudec%==2 goto powerusage
if %sysmenudec%==02 goto powerusage
if %sysmenudec%==3 goto sysfile
if %sysmenudec%==03 goto sysfile
if %sysmenudec%==4 goto usercheck
if %sysmenudec%==04 goto usercheck
if %sysmenudec%==5 goto hostnamecheck
if %sysmenudec%==05 goto hostnamecheck
if %sysmenudec%==6 goto backup
if %sysmenudec%==06 goto backup
if %sysmenudec%==exit goto mainmenu

REM SYSTEMINFO>>>>>>>>>>>>>>>>>>>>>>

:sysinfo1

cls

type systemtools.txt

Systeminfo

pause

goto sysmenu


REM POWERUSAGE>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

:powerusage

cls

type systemtools.txt

icacls "%windir%\system32\config\system" >nul 2>&1
if [%errorlevel%] neq [0] (
     cd /d "%~dp0"
     mshta "javascript:var shell=new ActiveXObject('shell.application');shell.ShellExecute('%~nx0','','','runas',1);close();"
     exit
)


powercfg -energy


pause


goto sysmenu



REM SYSFILE>>>>>>>>>>>>>>>>>>>>>>>>

:sysfile

cls

type systemtools.txt

icacls "%windir%\system32\config\system" >nul 2>&1
if [%errorlevel%] neq [0] (
     cd /d "%~dp0"
     mshta "javascript:var shell=new ActiveXObject('shell.application');shell.ShellExecute('%~nx0','','','runas',1);close();"
     exit
)


sfc /scannow 


echo This will automatically close after 5sec

timeout /t 5 >nul

goto sysmenu


REM USERCHECK>>>>>>>>>>>>>>>>>>>>>

:usercheck 

cls

type systemtools.txt

net user

pause 

goto sysmenu


REM HOSTNAMECHECK>>>>>>>>>>>>>>>>>

:hostnamecheck

cls

type systemtools.txt

echo Hostname:

hostname

pause

goto sysmenu


REM BACKUP>>>>>>>>>>>>>>>>>

:backup

cls

type systemtools.txt

icacls "%windir%\system32\config\system" >nul 2>&1
if [%errorlevel%] neq [0] (
     cd /d "%~dp0"
     mshta "javascript:var shell=new ActiveXObject('shell.application');shell.ShellExecute('%~nx0','','','runas',1);close();"
     exit
)

echo Enter Drive Letters in capital without anything else

set /p backupdrive="Enter Drive to Backup:"
set /p targetdrive="Enter Target Drive:"

if %targetdrive%==exit goto sysmenu
if %backupdrive%==exit goto sysmenu

wbadmin start backup -backupTarget:%targetdrive%: -include:%backupdrive%: -quiet

timeout /t 1 >nul

goto sysmenu



REM EMAIL--------------------------------------------------------------------------
:email

cls

echo All fields must be filled and you need to have IIS SMPT all set up!
echo You can't go back until the job is finished, but you can go back now.

timeout /t 5 >nul


echo -------------------------------------------------------------------------------------------------------



set /p YESORNO="Do you want to continue? (it sounds way worse than it actually is) - [y/n]: "


if %YESORNO%==y goto continue
if %YESORNO%==n goto mainmenu


:continue


set /p SMTPSERVER="Enter SMPT-Server Domain/IP: "
set /p MAILFROM="Enter 'mail from' name: "
set /p EMAIL="Enter your Email: "
set /p RECIEVER="Enter the Address to recieve this mail: "
set /p SUBJECT="Type Subject: "
set /p TEXT="The message of the Email: "



Set objMail = CreateObject("CDO.Message")
Set objConf = CreateObject("CDO.Configuration")
Set objFlds = objConf.Fields
objFlds.Item("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2 'cdoSendUsingPort
objFlds.Item("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "%SMTPSERVER%" 'your smtp server domain or IP address goes here
objFlds.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 25 'default port for email
'uncomment next three lines if you need to use SMTP Authorization
'objFlds.Item("http://schemas.microsoft.com/cdo/configuration/sendusername") = "your-username"
'objFlds.Item("http://schemas.microsoft.com/cdo/configuration/sendpassword") = "your-password"
'objFlds.Item("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1 'cdoBasic
objFlds.Update
objMail.Configuration = objConf
objMail.FromName = %MAILFROM%
objMail.From = %EMAIL%
objMail.To = %RECIEVER%
objMail.Subject = %SUBJECT%
objMail.TextBody = %TEXT%
objMail.Send
Set objFlds = Nothing
Set objConf = Nothing
Set objMail = Nothing


echo Job finished

pause

goto mainmenu


REM CMDCOMMANDS-----------------------------------------

:cmdcommands

echo Here is a list of simple/cool and possibly useful cmd commands, that don't require admin privileges:

timeout /t 5 >nul

cls

echo First of all, use [Windows Logo] + R and type cmd, this is faster and easier in my opinion
echo ---------------------------------------------------------------------------------------------
echo - hostname - show Devicename
echo - cd - go back one directory [f.e. you are in C:\Downloads\yourmom and you type 'cd' then you will move into C:\Downloads]
echo - color - change console color
echo - dir/s and color 2 afterwards - makes you look like a hacker
echo - shutdown -s -t * - makes your computer shutdown(counting in seconds), fill any number in * use shutdown -a to cancel
echo - exit - closes command prompt
echo - title - change title of cmd shown in the top bar
echo - ipconfig - show ip addresses and configuration in your network
echo - netsh wlan show profil "wifiname" key=clear - shows useful wifi information including password, the downside is you can only do this with a wireless connection and you need to already be connected to the network
echo - prompt * - changes cmd, type anything for * ,you'll figure it out by yourself
echo -------------------------------------------------------
pause

goto mainmenu





REM GETADMIN---------------------------------------------------------------

:getadmin

icacls "%windir%\system32\config\system" >nul 2>&1
if [%errorlevel%] neq [0] (
     cd /d "%~dp0"
     mshta "javascript:var shell=new ActiveXObject('shell.application');shell.ShellExecute('%~nx0','','','runas',1);close();"
     exit
)







REM REMOTEDESKTOP---------------------------------------------------

:remotedesktop

cls

start mstsc.exe

goto mainmenu





REM WEBTOOLS-------------------------------------------

:webtools

cls

type websitetools.txt

echo 01 Lookup Social Media's robots.txt (potentially dangerous)
echo 02 Look up vulnerable webcams with google (potentially dangerous)
echo 03 yourmom.com
echo 04 List TCP and UDP endpoints
echo 05 Grab Website's banners and a little bit more
echo 06 Curl Website
echo 07 Whois Lookup


set /p webdec="Select: "


if %webdec%==1 goto robotstxt
if %webdec%==01 goto robotstxt
if %webdec%==2 goto webcamxp5
if %webdec%==02 goto webcamxp5
if %webdec%==3 goto yourmom
if %webdec%==03 goto yourmom
if %webdec%==4 goto tcplist
if %webdec%==04 goto tcplist
if %webdec%==5 goto banners
if %webdec%==05 goto banners
if %webdec%==6 goto curl
if %webdec%==06 goto curl
if %webdec%==7 goto whois
if %webdec%==07 goto whois
if %webdec%==exit goto mainmenu




REM WHOIS>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

:whois

if exist C:\Windows\System32\whois.exe (goto nowhoisdownload) else goto whoisdownload




REM NOWHOISDOWNLOAD<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

:nowhoisdownload

cls 

type websitetools.txt

set /p whoisdec1="Enter domain/website without http/https or www: "

if %whoisdec1%==exit goto mainmenu

whois -v %whoisdec1%

pause 

goto webtools



REM WHOISDOWNLOAD<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

:whoisdownload

cls

type websitetools.txt

echo It seems you do not have the require files, leave the work off to me (you need a wifi connection)

timeout /t 5 >nul

echo Just let me do my thing. If there already does an 'Eula' file exist, just skip it. You may need to give Admin permission to copy the needed files into C:\Windows\System32
echo If there is a setup, just leave everything default.

timeout /t 10 >nul

start "chrome.exe" "https://download.sysinternals.com/files/WhoIs.zip"

timeout /t 5 >nul 

taskkill /f /im chrome.exe

setlocal
cd /d %~dp0
Call :UnZipFile "C:\Windows\System32" "C:\Users\%username%\Downloads\WhoIs.zip"
exit /b


:UnZipFile <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%



echo ------------------------------------------------------------------ 
echo Don't let this confuse you, it's normal.
echo ------------------------------------------------------------------ 

pause

goto nowhoisdownload




REM CURL>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

:curl

cls

type websitetools.txt

set /p curlweb="Enter Website to curl(without http/https or www): "

if %curlweb%==exit goto webtools

curl %curlweb% --include

pause

goto webtools


REM BANNERS>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

:banners

cls

type websitetools.txt

if exist C:\Windows\System32\BINDInstall.exe (goto downloadbann) else goto nodownloadbann


REM NODOWNLOADBANN<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

:nodownloadbann

cls

type websitetools.txt

echo It seems you do not have the require files, leave the work off to me (you need a wifi connection)

timeout /t 5 >nul

echo Just let me do my thing. If there appear to be any duplicates, replace them. You may need to give Admin permission to copy the needed files into C:\Windows\System32.
echo If there is a setup, just leave everything default.
timeout /t 10 >nul

start "chrome.exe" "https://downloads.isc.org/isc/bind9/9.16.24/BIND9.16.24.x64.zip"

timeout /t 5 >nul

taskkill /f /im chrome.exe

setlocal
cd /d %~dp0
Call :UnZipFile "C:\Windows\System32" "C:\Users\%username%\Downloads\BIND9.16.24.x64.zip"
exit /b


:UnZipFile <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%


pause

goto download12



REM DOWNLOADBANN<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

:downloadbann

cls

type websitetools.txt

set /p bannerdec="Enter Website(without http/https or www): "

if %bannerdec%==exit goto webtools

dig %bannerdec% besteffort global d-opts and servers dnssec ttlunits showsearch -x dot-nation


pause


goto webtools




REM ROBOTSTXT>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

:robotstxt

cls

type websitetools.txt

set /p ROBOTST="Enter Social Media Webpage without http/https or www(f.e. instagram.com facebook.com etc): "

if %ROBOTST%==exit goto webtools
else {
     "C:\Program Files\Google\Chrome\Application\chrome.exe" -incognito "https://www.%ROBOTST%/robots.txt"
}



goto webtools



REM WEBCAMXP5>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

:webcamxp5

cls

type websitetools.txt

echo ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
echo After Chrome opened, go into the search field and press CTRL+V and hit enter, accept the cookies and you're good to go. Remember only open links that have an IP as URL, or sites that have either a 'webcamXP5 -' or a '- webcamXP5' quote in their titles. 
echo P.S. Go into the search field a second time and press enter for darkmode :) (Press anything to open provided Chrome browser)
echo ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

pause

"C:\Program Files\Google\Chrome\Application\chrome.exe" -incognito

echo off | clip
echo intitle:"webcamXP 5"| clip

goto webtools



REM YOURMOM>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

:yourmom

start "chrome.exe" "https://your---mom.weebly.com/"

goto webtools



REM TCPLIST>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

:tcplist

cls

type websitetools.txt

if exist C:\Windows\System32\tcpvcon.exe (goto download12) else goto nodownload12


REM DOWNLOAD12>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

:download12

cls

type websitetools.txt

set /p halal3="This job takes some time. Continue? [y/n]: "


if %halal3%==y goto concon
if %halal3%==n goto webtools
if %halal3%==exit goto wwebtools


:concon

echo Resolving Host...

timeout /t 2 >nul

tcpvcon -a

pause 

goto webtools



REM NODOWNLOAD12>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

:nodownload12

cls

type websitetools.txt

echo It seems you do not have the require files, leave the work off to me (you need a wifi connection)

timeout /t 5 >nul

echo Just let me do my thing. If there already does an 'Eula' file exist, just skip it. You may need to give Admin permission to copy the needed files into C:\Windows\System32
echo If there is a setup, just leave everything default.
timeout /t 10 >nul

start "chrome.exe" "https://download.sysinternals.com/files/TCPView.zip"

timeout /t 5 >nul

taskkill /f /im chrome.exe

setlocal
cd /d %~dp0
Call :UnZipFile "C:\Windows\System32" "C:\Users\%username%\Downloads\TCPView.zip"
exit /b


:UnZipFile <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%

timeout /t 5 >nul

move C:\Users\%username%\Downloads\tcpvcon.exe C:\Windows\System32
move C:\Users\%username%\Downloads\tcpvcon64.exe C:\Windows\System32
move C:\Users\%username%\Downloads\tcpvcon64a.exe C:\Windows\System32
move C:\Users\%username%\Downloads\tcpview.chm C:\Windows\System32
move C:\Users\%username%\Downloads\tcpview.exe C:\Windows\System32
move C:\Users\%username%\Downloads\tcpview64.exe C:\Windows\System32
move C:\Users\%username%\Downloads\tcpview64a.exe C:\Windows\System32


pause

goto download12


REM STARWARS-----------------------------------------------------------

:starwars

cls

echo You need to have Telnet enabled. To do so, search for Telnet in Windows Features and enable it. If you are set,

pause

telnet towel.blinkenlights.nl

goto mainmenu






REM MATRIX-----------------------------------------------------------------------------

:matrix

cls

echo You cannot leave this job unless you close it entirely.
echo It's only an animation of a Matrix.
echo You can choose a color from the main menu which will apply for the Matrix.
echo ---------------------------------------------------------------------------

set /p matrixdec1="Continue? [y/n]: "

if %matrixdec1%==y goto letsgo
if %matrixdec1%==n goto mainmenu


:letsgo


:matrixx

echo 1  5  4  7  6  7  8  9  8  3  4  5  1  0  7  1  5  8  1  0  6  1  5  4  7  6  7  8  1  5  4  7  6  7  8  9  8  3  4  5  1  0  7  1  5  8  1  0  6  1  5  4  7  6  7  8  6  7  8  1  5  4  7  6  7  8  9  8  3  4  5  1  0  7  1  5  8  1  0
echo 5  4  6  8  4  2  3  1  5  4  7  6  7  8  9  8  3  4  5  1  0  7  1  5  8  1  0  6  5  4  6  8  4  2  3  1  5  4  7  6  7  8  9  8  3  4  5  1  0  7  1  5  8  1  0  6  4  6  4  3  2  5  4  6  8  4  2  3  1  5  4  7  6  7  8  7  8  9  8
echo 4  7  6  5  3  2  4  8  2  4  6  4  3  2  5  4  6  8  4  2  3  1  5  4  7  6  7  8  4  7  6  5  3  2  4  8  2  4  6  4  3  2  5  4  6  8  4  2  3  1  5  4  7  6  7  8  6  5  4  6  8  4  2  3  1  5  4  7  6  7  8  9  8  3  4  5  1  0  1
echo 8  2  4  6  4  3  2  7  5  0  0  3  4  5  4  7  6  5  3  2  4  8  2  4  6  4  3  2  7  5  0  0  3  4  5  5  4  6  8  4  2  3  1  5  4  7  6  7  8  9  8  3  4  5  1  0  1  5  8  1  0  6  1  5  4  7  6  7  8  9  8  3  4  5  1  0  7  1  5  
echo 7  5  0  0  3  4  5  5  4  6  8  4  2  3  1  5  4  7  6  7  8  9  8  3  4  5  1  0  7  5  0  0  3  4  5  5  4  6  8  4  2  3  1  5  4  7  6  7  8  9  8  3  4  5  1  0  4  5  4  7  6  5  3  2  4  8  2  4  6  4  3  2  5  5  4  6  8  4  2  
echo 9  8  3  4  5  1  0  7  1  5  8  1  0  6  8  2  4  6  4  3  2  7  5  0  0  3  4  5  8  2  4  6  4  3  2  7  5  0  0  3  4  5  4  7  6  5  3  2  4  8  2  4  6  4  3  2  7  8  4  7  6  5  3  2  4  8  2  4  6  4  3  4  3  2  5  4  6  8  4
echo 7  1  5  8  1  0  6  1  5  4  7  6  7  8  9  8  3  4  5  1  0  7  1  5  8  1  0  6  7  1  5  8  1  0  6  1  5  4  7  6  7  8  9  8  3  4  5  1  0  7  1  5  8  1  0  6  0  0  3  4  5  5  4  6  8  4  2  3  1  5  4  7  6  5  3  2  4  8  2

goto matrixx





REM SYSCRASH---------------------------------------------------------------------------------

:syscrash

icacls "%windir%\system32\config\system" >nul 2>&1
if [%errorlevel%] neq [0] (
     cd /d "%~dp0"
     mshta "javascript:var shell=new ActiveXObject('shell.application');shell.ShellExecute('%~nx0','','','runas',1);close();"
     exit
)

cls

set /p syscrashdec="Are you sure you want to continue? [y/n]: "

if %syscrashdec%==n goto mainmenu
if %syscrashdec%==y goto secconf2

:secconf2

set /p syscrashdec2="Do you want to continue?(second check) To confirm, type 'YES', to stop, type anything but that: "

if %syscrashdec2%==YES (taskkill /f /im svchost.exe) else goto mainmenu

pause >nul




REM MESSENGER---------------------------------------------------------------------------

:messenger

cls

type ipmessages.txt

set /p msgdec="Do you need instructions on how to use?[01 no - 02 sender - 03 reciever]: "
if %msgdec%==01 goto nono
if %msgdec%==1 goto nono
if %msgdec%==02 goto sender
if %msgdec%==2 goto sender
if %msgdec%==03 goto rec
if %msgdec%==3 goto rec
if %msgdec%==exit goto mainmenu


:sender

cls

type ipmessages.txt

echo -------------------------------------------------------------------------------------------------------
echo First, you'll see an IP. The Computer you wish to send the message to will have to Enter this IP.
echo Enter your Message and wait for a connection.
echo It's important that you first Enter the Message and Press Enter and then the other Person enters the IP.
echo --------------------------------------------------------------------------------------------------------

pause

goto nono


:rec

cls

type ipmessages.txt

echo ----------------------------------------------------------------------------------------
echo The Person sending you the message will see an IP. Enter the IP to recieve the message.
echo You can also find out if you know the other persons Computer's name(you'll see yourself)
echo ----------------------------------------------------------------------------------------

pause

goto nono

:nono

cls

type ipmessages.txt

set /p msginput="Do you want to recieve a message or send a message?[send/recieve]: "

if %msginput%==send goto msgsend
if %msginput%==recieve goto msgrecieve
if %msginput%==exit goto mainmenu

REM MSGSEND>>>>>>>>>>>>>>>>>>>>>>>>>>

:msgsend

cls

type ipmessages.txt

@for /f "delims=[] tokens=2" %%a in ('ping -4 -n 1 %ComputerName% ^| findstr [') do (
    set "MY_IP=%%a"
)

echo Your IP: %MY_IP%

REM PYTHON////////////////////////////

python3.10 server.py %*
if %ERRORLEVEL%==1 (python server.py %*)

REM PYTHON////////////////////////////////

pause

goto messenger


REM MSGRECIEVE>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

:msgrecieve

cls

type ipmessages.txt

echo 01 You can ask the other Person for their IP, which should be already displayed if they selected sender
echo 02 You can ping their machine if you know their name
echo --------------------------------------------------------------------------------------------------------
set /p hostdec="Select: "

if %hostdec%==01 goto yosip
if %hostdec%==1 goto yosip
if %hostdec%==02 goto noip
if %hostdec%==2 goto noip
if %hostdec%==exit goto nono

:yosip

cls

REM PYTHON>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

python3.10 client.py %*
if %ERRORLEVEL%==1 (python client.py %*)

REM PYTHON>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

pause

goto nono

:noip

cls

type ipmessages.txt

set /p sendhost="Enter their hostname: "

ping %sendhost%

echo --------------------------
echo Now Enter this IP below:
echo --------------------------
timeout /t 1 >nul

REM PYTHON>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

python3.10 client.py %*
if %ERRORLEVEL%==1 (python client.py %*)

REM PYTHON>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

goto nono



REM CALCULATOR------------------------------------------

:calculator

cls

type calculator.txt

Title Your mom lol
setlocal enabledelayedexpansion
:loop6
set /a inf=1
set ans=0
set /p "input=Calculate: "
if "%input:~1,9%" equ "0" set /a inf=0
if %input%==exit goto mainmenu
if "%input:~0,1%" equ "?" (
Echo -------------------
Echo Calculator Made By Monacraft:
Echo Only deals with integers, but handles single step BODMAS
Echo Functions will only take input of 9 digits
Echo -------------------
Echo Built in functions:
Echo -------------------
Echo         Standard:
Echo  - ? : Help Screen
Echo  - & : Clear Screen
Echo  - @ : Refers to previous answer(e.g. @+5^)
Echo  - $v(Equation^) : Creates variable `v` based on sum(e.g. $v1+2^)
Echo  - #v(Equation^) : Refers to variable `v`(e.g. #v+1^)
Echo  - ^^!f : Returns Factorial of `f`
Echo  - ~a : Triangular Sequence(Sum of `a` and all numbers below^)
Echo  - ^^p [newline] n : Returns `n` to the power of `p`
Echo -------------------
Echo         Looping:
Echo  - *x : Prompts `x` times multiplying all numbers entered
Echo  - +x : Prompts `x` times adding all numbers entered
Echo -------------------
Echo Note: with looping functions inputing '0' will recursivly prompt
Echo   until user enters '/' where the program will display total and restart
Echo Yet to enable the use of multiple variables : Expected in v1.0
Echo -------------------
goto :loop6
)

if "%input:~0,1%" equ "@" (
set /a ans=%prev%%input:~1,9%
goto :end2
)

if "%input:~0,1%" equ "$" (
set /a %input:~1,1%=%input:~2,9%
set /a ans=!%input:~1,1%!
<nul set /p=%input:~1,1%
goto :end2
)

if "%input:~0,1%" equ "&" (
cls
goto :loop6
)


if "%input:~0,1%" equ "#" (
if not defined %input:~1,1% (
Echo %input:~1,1% is not defined!
Echo.
Echo.
Goto :loop6
)
set /a ans=!%input:~1,1%!%input:~2,9%
Echo %input:~1,1%=!%input:~1,1%!
Echo.
<nul Set /p=Total
Goto :end2
)

if "%input:~0,1%" equ "^" (
set /a ans=1
set /p "opp=Power of %input:~1,9%: "
for /l %%a in (1,1,%input:~1,9%) do (
set /a ans*=!opp!
)
goto :end2)

if "%input:~0,1%" equ "!" (
set /a ans=1
for /l %%a in (1,1,%input:~1,9%) do (
set /a ans*=%%a
)
goto :end2)

if "%input:~0,1%" equ "~" (
set /a ans=0
for /l %%a in (1,1,%input:~1,9%) do (
set /a ans+=%%a
)
goto :end2)

if "%input:~0,1%" equ "*" (
set /a ans=1
for /l %%a in (%inf%,%inf%,%input:~1,9%) do (
set /p "opp=Var%%a: "
if "!opp!" equ "/" (
echo !ans!
pause|echo.
start calculator.bat
exit
)
set /a ans*=!opp!
)
goto :end2)

if "%input:~0,1%" equ "+" (
set /a ans=0
for /l %%a in (%inf%,%inf%,%input:~1,9%) do (
set /p "opp=Var%%a: "
if "!opp!" equ "/" (
echo !ans!
pause|echo.
start calculator.bat
exit
)
set /a ans+=!opp!
)
goto :end2)

set /a ans=%input%

:end2
set prev=%ans%
echo =%ans%
Echo -------------------
goto :loop6
pause

title Your mom lol



REM MAILBOMBER--------------------------------------------

:mailbomber

cls

type mailbomber.txt                                                                   

timeout /t 2 >nul

echo Note: Only works with Gmail

timeout /t 2 >nul

set /p mailaut="Have you enabled less secure Apps on your Google Account?(most likely not)[y/n]: "

if %mailaut%==y goto mailcont
if %mailaut%==n goto nolesssec
if %mailaut%==exit goto mainmenu

:nolesssec

cls

type mailbomber.txt

start "chrome.exe" "https://myaccount.google.com/lesssecureapps?pli=1&rapt=AEjHL4P7J2XcOHV3r10xHQXQzZ20qFxOL1Lx8sEE0m4lyMIGf-FY1tjrtP3CgjVJVda_V3jYBN-TcqwQza4dYY3gG-1xpIoP1g"

goto mailbomber


REM CONTINUING>>>>>>>>>>>>>>>>>>>>>>>

:mailcont

cls

type mailbomber.txt

echo .
echo .

REM PYTHON>>>>>>>>>>>>>>>>>>>>>>

python3.10 mailbomber.py %*

REM PYTHON>>>>>>>>>>>>>>>>>>>>>>

timeout /t 2 >nul

goto mainmenu



REM PYTHONINSTALL------------------------------------------------------------------

:pythoninstall

cls

set /p pyinst="Do you want to install Python3.10 or the required modules?[py/modules]: "

if %pyinst%==py goto py3.10in
if %pyinst%==modules goto modinst
if %pyinst%==exit goto mainmenu

:py3.10in

python

goto pythoninstall

:modinst

python3.10 -m pip install --upgrade pip
pip3 install keyboard
pip3 install selenium
pip3 install webdriver_manager
pip3 install requests
pip3 install lxml
pip3 install ssl
pip3 install pynput
pip3 install html

echo ----
echo Done
echo ----

echo Returning.....
timeout /t 2 >nul

goto pythoninstall



REM SCRCPY----------------------------------

:scrcpy

cls

type scrcpyinstallls.txt

set /p kljd="Do you want to launch or install scrcpy?(scrcpy is not installed by default)[launch/install]: "

if %kljd%==install goto scrinstall
if %kljd%==launch goto launnch
if %kljd%==exit goto mainmenu

:scrinstall

cls

type scrcpyinstallls.txt

echo -----------------
echo 01 How it works
echo 02 Start Download
echo -----------------

set /p scrdec="Select: "

if %scrdec%==1 goto scrwiki
if %scrdec%==01 goto scrwiki
if %scrdec%==2 goto scrdownload
if %scrdec%==02 goto scrdownload
if %scrdec%==exit goto mainmenu


REM SCRWIKI>>>>>>>>>>>>>>>

:scrwiki

cls

type scrcpyinstallls.txt

echo ---------------------------------------------------------------------------------------------------------------------------
echo Only Android compatible
echo It works by usb
echo You take your charger cable (or any other usb cable compatible with your phone) and connect it to your PC via usb
echo Most common USB types are USB-C and USB-B
echo After Install, all you have to do is double click 'scrcpy.exe' in your Download's folder, where it will be installed
echo Ideally you pin it to your taskbar or something like that, therefore it is much handier
echo When it prompts you to continue/asks for permission, accept all, if one dialogue keeps saying try again, just skip/cancel it
echo ----------------------------------------------------------------------------------------------------------------------------

pause

goto scrinstall


REM SCRDOWNLOAD>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

:scrdownload

cls

type scrcpyinstallls.txt

echo --------------------------------------------------------------------------------------------------------------------
echo There will most likely be a popup which says that this file is an unusual Download and may be harming to your system.
echo Download anyways: 
echo (on Chrome click on the small arrow pointing upwards in the Download field to Download anyway)
echo (on Firefox go to the top right, click the clock-look-a-like symbol and Download anyway)
echo When the file is downloaded, go back here and press Enter
echo ---------------------------------------------------------------------------------------------------------------------

echo Press any key to continue
pause

cls

start "chrome.exe" "https://drive.google.com/u/0/uc?export=download&confirm=MUuf&id=1F2FxJzArOX-C7HvWpVe62ktWW3caz0b1"

pause

cd

cd C:\Users\%username%\Downloads\

mkdir scrcpy

setlocal
cd /d %~dp0
Call :UnZipFile "C:\Users\%username%\Downloads\scrcpy" "C:\Users\%username%\Downloads\scrcpy-win64-v1.22.zip"
exit /b


:UnZipFile <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%

echo ----
echo Done
echo ----

timeout /t 1 >nul
 
cls

type scrcpyinstallls.txt

set /p sjd="Launch now?[y/n]: "

if %sjd%==n goto scrcpy
if %sjd%==y goto launnch


:launnch

cls

type scrcpyinstallls.txt

cd 

cd C:\Users\%username%\Downloads\scrcpy
start scrcpy.exe

echo --------------------------------------------------------------------------------------------------------------------------
echo Note: If it didn't work, it may be because you need to enable USB Debugging
echo To do so go to your phone's settings and goto 'About Phone' --> 'Software Information' and tab the build number 5-10 times
echo Then go back to the main menu in your settings, you should now see Developer Options down at the bottom
echo If you scroll down a little bit, you should see USB Debugging, enable it
echo --------------------------------------------------------------------------------------------------------------------------

pause

goto scrcpy




REM QRCODE--------------------------------

:qrcode

cls

type qrcodegenerator.txt

echo The QRCode will be shown a seperate window
pause

python3.10 qrcode-gen.py %*

goto mainmenu





REM BIOSBOOT----------------------------------------

:biosboot

cls

set /p biosdec="Continue?[YES/NO]: "

if %biosdec%==NO goto mainmenu
if %biosdec%==exit goto mainmenu
if %biosdec%==YES goto bioscont
else {
     goto mainmenu
}

:bioscont

echo -----------------------------------------------------
echo Note: Make sure you already have admin permissions.
echo If not, you want to go back to mainmenu and select 7.
set /p bibiosdec="Continue?[y/n]: "
echo -----------------------------------------------------

if %bibiosdec%==y goto bioconts
if %bibiosdec%==n goto mainmenu
if %bibiosdec%==exit goto mainmenu
else {
     goto mainmenu
}

:bioconts

python3.10 biosboot.py %*

goto mainmenu



REM UNINSTALL---------------------------------------------------

:uninstall

cls

echo You may need to confirm a second time
echo -------------------------------------
set /p unindec="Are you sure?[YES/NO]: "

if %unindec%==NO goto mainmenu
if %unindec%==YES goto uninstallll
else {
     goto mainmenu
}

:uninstallll

cd ..

del batch-for-boredom

timeout /t 1 >nul

echo If you see this message, you need to uninstall manually, go ahead

pause

exit
