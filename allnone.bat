@echo off
cls
title Allnone
color a
cls

:start
cls
echo Witaj!
echo [1]-Gry [2]-Aplikacje
set /p"sg="
if %sg%==1 goto gry
if %sg%==2 goto apk
ping -n 3 localhost > nul 
echo --------------------------------------------
echo Cos sie zepsulo. Sprobuj jeszcze raz.
echo --------------------------------------------
ping -n 2 localhost > nul 
goto start
:gry
cls
echo Wybierz gre.
echo [1]- Ping pong 
echo [0]- Menu
set /p"gra="
if %gra%==1 goto pingol
if %gra%==0 goto start

ping -n 2 localhost > nul 
echo -----------------------------------------------
echo Cos poszlo nie tak. Sprobuj jeszcze raz.
echo -----------------------------------------------
ping -n 2 localhost > nul 
goto gry
:apk
cls
echo Wybierz Aplikacje
echo [1]- Czasowy wylacznik komputera
echo [2]- Google chrome
echo [3]- Notatnik
echo [4]- Czyszczenie ciasteczek
echo [0]- Menu
set /p"apk="
if %apk%==1 goto wk
if %apk%==2 goto google
if %apk%==3 goto note
if %apk%==4 goto cook
if %apk%==0 goto start

ping -n 2 localhost > nul 
echo -----------------------------------------------
echo Cos poszlo nie tak. Sprobuj jeszcze raz.
echo -----------------------------------------------
ping -n 2 localhost > nul 
goto apk
:cook
cls
ping -n 3 localhost > nul
echo --------------------------
echo Usuwanie ciasteczek.
echo --------------------------
ping -n 2 localhost > nul
cls
echo --------------------------
echo Usuwanie ciasteczek..
echo --------------------------
ping -n 2 localhost > nul
cls
echo --------------------------
echo Usuwanie ciasteczek...
echo --------------------------
ping -n 2 localhost > nul
cls
del /f /q "%userprofile%\Cookies\*.*"

cls 
echo -------------------------
echo Ciasteczka usuniete!
echo -------------------------
ping -n 2 localhost > nul
goto apk
:note
cls
echo Napisz nazwe pliku.
set /p "nameplik="
echo Nazwa pliku: %nameplik% > %nameplik%.txt

echo Teraz mozesz notowac! 
goto notepad
:notepad
set /p "note="
echo %note% >>  %nameplik%.txt
if %note%==koniec goto endnote
goto notepad
:endnote
cls
echo ---------------------
echo Notatki zapisane!
echo ---------------------
ping -n 3 localhost > nul 
cls
goto start
:google
cls
start chrome.exe
ping -n 3 localhost > nul 
echo --------------------------------------------------------------------------------------------------------
echo Google Chrome powinien zostac uruchomiony jezeli tak sie nie stalo sprobuj jeszcze raz.
echo --------------------------------------------------------------------------------------------------------
ping -n 5 localhost > nul
goto apk
:wk
ping -n 2 localhost > nul 
cls
echo Za ile sekund ma sie wylaczyc twoj komputer? 
set /p"ofk="
shutdown -s -t %ofk%
cls
echo Twoj komputer wylaczy sie za %ofk% sekund

echo Wybierz co chcesz dalej zrobic.
echo [1]-Wroc [2]-Anuluj wylaczenie komputera
set /p"aof="

if %aof%==1 goto start
if %aof%==2 goto peep 

ping -n 4 localhost > nul 


cls 
:peep
shutdown -a
ping -n 2 localhost > nul 
echo ----------------------------------------
echo Anulowano wylaczenie komputera
echo ----------------------------------------
ping -n 3 localhost > nul 
cls
echo ---------------------
echo Powrot do menu.
echo ---------------------
ping -n 2 localhost > nul 
cls
echo ---------------------
echo Powrot do menu..
echo ---------------------
ping -n 2 localhost > nul
cls 
echo ---------------------
echo Powrot do menu...
echo ---------------------
ping -n 2 localhost > nul 
goto start
:pingol
cls
echo Ping czy Pong ? [0]-Menu
set /p "a= "
if %a%==Ping goto pong
if %a%==ping goto pong
if %a%==Pong goto ping
if %a%==pong goto ping
if %a%==0 goto start
if %a%==menu goto start

ping -n 3 localhost > nul 
echo ----------
echo ERROR!
echo ----------
ping -n 5 localhost > nul 
goto pingol
:pong
echo Pong!
set /p "ob= "
if %ob%==restart goto pingol			

goto pong                                     
:ping
echo Ping!
set /p "oa= "
if %oa%==restart goto pingol
goto ping


















