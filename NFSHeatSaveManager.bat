::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFBRDQACXAE+1EbsQ5+n//NaOoUITGus8d+8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQIeLR5QDCKNLiuJFrAZ7KjI7vyC4mAcWuM4fZ27
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWA6m/VYfPxc0
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFBRDQACXAE+1EbsQ5+n//NaphH41UeMrS47N35mPLuEU71eqcI4otg==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
title NFS Heat Save Manager
color 0c
@echo off
set progpath=%userprofile%\Documents\NFSHEATSAVEMANAGER
set gamepath=%userprofile%\Documents\Need For Speed Heat\SaveGame
cd %userprofile%\Documents\
if not exist "%progpath%" mkdir "%progpath%"
cls
echo Need For Speed Heat Save Manager
echo By "github.com/Th3SnowyOwl"
echo.
echo PLEASE SAVE YOUR GAME BEFORE HITTING ENTER!!!!
pause
taskkill /F /IM "NeedForSpeedHeat.exe" /T
cls
cd "%progpath%"
if not exist "%gamepath%\savegame\1" goto load
set /p savename="Name Your Current Save :"
mkdir "%progpath%\%savename%"
cd "%progpath%"
move "%gamepath%\savegame" "%progpath%\%savename%\"
move "%gamepath%\wraps" "%progpath%\%savename%\"
cls
:load
set /p load="Would you like to load a game? Y/N :"
if %load% equ Y goto jump
exit
:jump
cd "%progpath%"
echo List of your saves:
dir /b
set /p svld="What save would you like to load :"
move "%progpath%\%svld%\savegame" "%gamepath%\"
move "%progpath%\%svld%\wraps" "%gamepath%\"