@echo off
REM    If you prefer to launch WoW without using the 
REM    recomended battle.net way (which avoids password typing)
REM    you can use this instead.
REM
REM    Edit the variables to match your setup
REM
REM How many wow to launch?
set HOWMANY=4
REM Where to find and which wow (classic, retail,...)
REM Change for instance to _classic_
set WOWDIR=C:\Program Files (x86)\World of Warcraft\_classic_
REM Exe name: Wow.exe or WowClassic.exe
set BIN=WowClassic.exe
REM Suffix, change if you want different team profiles
set TEAM=WOB
echo Will launch %HOWMANY% %BIN% in WOWDIR=%WOWDIR%
FOR /L %%i IN (1,1,%HOWMANY%) DO (
    echo Launching #%%i
    IF NOT EXIST "%WOWDIR%\WTF\Config-%TEAM%%%i.wtf" copy "%WOWDIR%\WTF\Config.wtf" "%WOWDIR%\WTF\Config-%TEAM%%%i.wtf" >NUL
    start "" "%WOWDIR%\%BIN%" -config Config-%TEAM%%%i.wtf
)
