@echo off
mode 122,25

timeout 2 >nul
cls
goto main

:main
title Terbatch CMD Root
echo.
echo  [91mroot[0m@ [91m%computername% [0m~[91m/[0mdownloads[91m/[0mterbatch[91m/
set /p cmd="[0m # "
%cmd%
goto main
