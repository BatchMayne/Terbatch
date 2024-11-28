@echo off
mode 122,25

timeout 2 >nul
cls
goto main

:main
title Terbatch CMD
echo.
echo  [92m%username%[0m@ [92m%computername% [0m~[96m
set /p cmd="[0m $ "
%cmd%
goto main
