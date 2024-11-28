<# : batch portion
@echo off
mode 122,25
chcp 65001 >nul
set "p1=%~f0"
set p=%p1:^=%
set p=%p:@=%
set p=%p:&=%
if not "%p1%"=="%p%" goto :badpath

if not "%~nx0"=="terbatch.bat" goto :badname

echo "%~dp0" | findstr /V /C:"%TEMP%" >nul
if %ERRORLEVEL% NEQ 0 goto :temp

timeout 2 >nul
cls
goto typecmd

:typecmd
title Terbatch
echo.
echo  [92m%username%[0m@ [92m%computername% [0m~[96m
set /p input="[0m $ "

if /i "%input%" EQU "cd" (
	cd
	goto typecmd
)

if /i "%input%" EQU "ipconfig" (
	ipconfig
	goto typecmd
)

if /i "%input:~0,4%" EQU "echo" (
	echo %input:~5%
	goto typecmd
)

if /i "%input%" EQU "mkdir" (
	goto typecmd
)

if /i "%input%" EQU "mklink" (
	mklink
	goto typecmd
)

if /i "%input%" EQU "mode" (
	mode
	goto typecmd
)

if /i "%input%" EQU "more" (
	mode
	goto typecmd
)

if /i "%input%" EQU "move" (
	move
	goto typecmd
)

if /i "%input%" EQU "openfiles" (
	openfiles
	goto typecmd
)

if /i "%input%" EQU "path" (
	path
	goto typecmd
)

if /i "%input%" EQU "cls" (
	cls
	goto typecmd
)

if /i "%input%" EQU "chcp" (
	chcp
	goto typecmd
)

if /i "%input%" EQU "tree" (
	tree
	goto typecmd
)

if /i "%input%" EQU "chcp 65001" (
	chcp
	goto typecmd
)

if /i "%input%" EQU "devmode -on" (
	echo Starting Devmode..
	timeout 2 >nul
	cls
	goto hackerinit
)

if /i "%input%" EQU "cd termac" (
	cls
	goto termac
)

if /i "%input%" EQU "dragon" (
	echo Options:
	echo -l	    LOGIN
	echo -p	    PASSLIST
	echo -s	    START ATTACKING
	echo.
	echo Exmaple: user -l passlist.txt -p -s
	goto typecmd
)

if /i "%input%" EQU "dragon -l" (
	echo dragon: option requires an argument -- 'l'
	goto typecmd
)

if /i "%input%" EQU "dragon -p" (
	echo dragon: option requires an argument -- 'p'
	goto typecmd
)

if /i "%input%" EQU "dragon -s" (
	echo can't start attacking
	goto typecmd
)

if /i "%input%" EQU "bash" (
	goto typecmd
)

if /i "%input%" EQU "cat" (
	set /p input="> "
	goto typecmd
)

if /i "%input%" EQU "ftp server" (  
	echo Scanning ftp server
	tree
	tree
	timeout 2 >nul
	echo Scanning Vulnerable Servers
	timeout 2 >nul
	echo.
	echo Credentials Found!
	goto typecmd
)

if /i "%input%" EQU "call admin" (
	echo ==========================================================
	echo Username: %username%	Computer name: %computername%
	echo.
	echo File Location: %cd%	File name: %~nx0
	echo ==========================================================
	goto typecmd
)

if /i "%input%" EQU "exit" (
	echo logout
	ping Localhost -n 1 > nul
	echo.
	echo task completed!
	ping Localhost -n 1 > nul
	exit
)

if /i "%input%" EQU "echo." (
	goto typecmd
)

if /i "%input%" EQU "hollywood" (
	tasklist
	tasklist
	tasklist
	tasklist
	tasklist
	cls
	goto typecmd
)

if /i "%input%" EQU "cat" (
	set /p input="> 
	goto typecmd
)

if /i "%input%" EQU "set console EQU 20" (
	timeout 2 >nul
	cls
	goto console
)

if /i "%input%" EQU "sudo root" (
	echo Unable to root
	echo Please enter "[92m set root[0m " to root terbatch
	goto typecmd
)

if /i "%input%" EQU "set root" (
	set /p user="USERNAME:"
	set /p pass="PASSWORD:"
	goto attempt
)


echo '%input%' is not recognized as an internal or external command,
echo operable program or batch file.
goto typecmd

:attempt
timeout 2 >nul
echo [0mInstalling:
echo   [92mroot
ping Localhost -n 2 >nul
echo.
echo [0mInstalling dependencies:
echo   [92mroot-terbatch
ping Localhost -n 2 >nul
echo.
echo [0mSuggested packages:
echo   [92mruby

ping Localhost -n 2 >nul
echo [0mSummary:
echo   [92mUpgrading: 0, Installing: 2, Removing: 0, Not Upgrading: 0
echo   [92mDownload size: 36.8 MB
echo   [92mSpace needed: 145 MB / 1,022 GB available
echo.
echo [0mContinue? [Y/n]
echo timeout 2 >nul

echo.
echo  [92m%username%[0m@ [92m%computername% [0m~[96m
set /p input="[0m $ "

if /i "%input%" EQU "y" (
	echo Attempts:
	echo.
	ping Localhost -n 2 >nul
	echo Root Succesfull!
	echo.
	timeout 2 >nul
	cls
	goto root
)

if /i "%input%" EQU "Y" (
	echo Attempts:
	echo.
	ping Localhost -n 2 >nul
	echo Root Succesfull!
	echo.
	timeout 2 >nul
	cls
	goto root
)

if /i "%input%" EQU "n" (
	goto typecmd
)

if /i "%input%" EQU "N" (
	goto typecmd
)

echo '%input%' is not recognized as an internal or external command,
echo operable program or batch file.
goto typecmd

:root
echo.
echo  [91mroot[0m@ [91m%computername% [0m~[91m/[0mdownloads[91m/[0mterbatch[91m/
set /p input="[0m # "

if /i "%input%" EQU "cd" (
	cd
	goto root
)

if /i "%input%" EQU "ipconfig" (
	ipconfig
	goto root
)

if /i "%input:~0,4%" EQU "echo" (
	echo %input:~5%
	goto root
)

if /i "%input%" EQU "mkdir" (
	goto root
)

if /i "%input%" EQU "mklink" (
	mklink
	goto root
)

if /i "%input%" EQU "mode" (
	mode
	goto root
)

if /i "%input%" EQU "more" (
	mode
	goto root
)

if /i "%input%" EQU "move" (
	move
	goto root
)

if /i "%input%" EQU "openfiles" (
	openfiles
	goto root
)

if /i "%input%" EQU "path" (
	path
	goto root
)

if /i "%input%" EQU "cls" (
	cls
	goto root
)

if /i "%input%" EQU "chcp" (
	chcp
	goto root
)

if /i "%input%" EQU "tree" (
	tree
	goto root
)

if /i "%input%" EQU "chcp 65001" (
	chcp
	goto root
)

if /i "%input%" EQU "devmode -on" (
	echo Starting Devmode..
	timeout 2 >nul
	cls
	goto hackerinit
)

if /i "%input%" EQU "cd termac" (
	cls
	goto termac
)

if /i "%input%" EQU "dragon" (
	echo Options:
	echo -l	    LOGIN
	echo -p	    PASSLIST
	echo -s	    START ATTACKING
	echo.
	echo Exmaple: user -l passlist.txt -p -s
	goto root
)

if /i "%input%" EQU "dragon -l" (
	echo dragon: option requires an argument -- 'l'
	goto root
)

if /i "%input%" EQU "dragon -p" (
	echo dragon: option requires an argument -- 'p'
	goto root
)

if /i "%input%" EQU "dragon -s" (
	echo can't start attacking
	goto root
)

if /i "%input%" EQU "bash" (
	goto root
)

if /i "%input%" EQU "cat" (
	set /p input="> "
	goto root
)

if /i "%input%" EQU "ftp server" (  
	echo Scanning ftp server
	tree
	tree
	timeout 2 >nul
	echo Scanning Vulnerable Servers
	timeout 2 >nul
	echo.
	echo Credentials Found!
	goto root
)

if /i "%input%" EQU "call admin" (
	echo ==========================================================
	echo Username: %username%	Computer name: %computername%
	echo.
	echo File Location: %cd%	File name: %~nx0
	echo ==========================================================
	goto root
)

if /i "%input%" EQU "exit" (
	echo logout
	ping Localhost -n 1 > nul
	echo.
	echo task completed!
	ping Localhost -n 1 > nul
	exit
)

if /i "%input%" EQU "echo." (
	goto root
)

if /i "%input%" EQU "hollywood" (
	tasklist
	tasklist
	tasklist
	tasklist
	tasklist
	cls
	goto root
)

if /i "%input%" EQU "cat" (
	set /p input="> 
	goto root
)

if /i "%input%" EQU "set console EQU 20" (
	timeout 2 >nul
	cls
	goto console
)

if /i "%input%" EQU "sudo root" (
	echo You are already rooted
	goto root
)

if /i "%input%" EQU "set root" (
	echo You are already rooted
	goto root
)

echo '%input%' is not recognized as an internal or external command,
echo operable program or batch file.
goto root


:badname
echo Don't rename this script, Leave it as "terbatch.bat"!
pause
exit

:temp
echo It looks like you're running this in archive, extract is first.
pause
exit

:hackerinit
echo.
set /p input=" [92mdevmode>[0m"

if /i "%input%" EQU "getserver -r" (
	tasklist
	tasklist
	cls
	echo Scanning Vulnerable Servers
	timeout 2 >nul
	echo.
	echo Credentials Found!
	
	start cmd /k ftp 66.194.79.251
	pause
	goto hackerinit
)

if /i "%input%" EQU "shutdown" (
	shutdown /s
	goto hackerinit
)

if /i "%input%" EQU "restart" (
	shutdown /r
	goto hackerinit
)

if /i "%input%" EQU "-x" (
	cls
	goto typecmd
)

if /i "%input%" EQU "help" (
	echo getserver -r   Start's attacking a Server
	echo shutdown       Shutdown's you're computer
	echo restart        Restart's you're computer
	echo -x             Exit's devmode
	goto hackerinit
)

echo '%input%' is not recognized as an internal or external command,
echo operable program or batch file.
goto hackerinit

:hackerroot
echo.
set /p input=" [92mdevmode>[0m"

if /i "%input%" EQU "getserver -r" (
	tasklist
	tasklist
	cls
	echo Scanning Vulnerable Servers
	timeout 2 >nul
	echo.
	echo Credentials Found!
	
	start cmd /k ftp 66.194.79.251
	pause
	goto hackerinit
)

if /i "%input%" EQU "shutdown" (
	shutdown /s
	goto hackerinit
)

if /i "%input%" EQU "restart" (
	shutdown /r
	goto hackerinit
)

if /i "%input%" EQU "-x" (
	cls
	goto root
)

if /i "%input%" EQU "help" (
	echo getserver -r   Start's attacking a Server
	echo shutdown       Shutdown's you're computer
	echo restart        Restart's you're computer
	echo -x             Exit's devmode
	goto hackerinit
)

echo '%input%' is not recognized as an internal or external command,
echo operable program or batch file.
goto hackerinit
