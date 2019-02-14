@echo off
cls
title CWK
color b
cls
:wk
ping -n 2 localhost > nul 
cls
echo Za ile ma sie wylaczyc twoj komputer? (czas podaj w sekundach) 
set /p"ofk="
shutdown -s -t %ofk%
cls
color c
echo -------------------------------------------
echo Twoj komputer wylaczy sie za %ofk% sekund
echo -------------------------------------------
ping -n 2 localhost > nul 
color b
cls
echo Wpisz [1] jezeli chcesz anulowac wylaczenie komputera
echo albo wpisz [2] jezeli chcesz zamknac aplikacje

set /p"aof="

if %aof%==2 goto end
if %aof%==1 goto peep 

ping -n 4 localhost > nul 
:peep
cls 
shutdown -a
color a
ping -n 2 localhost > nul 
echo ----------------------------------------
echo Anulowano wylaczenie komputera
echo ----------------------------------------
ping -n 4 localhost > nul 
goto end

:end
cls
return

















