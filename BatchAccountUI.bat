@echo off
md %appdata%\Mojang\Llama\Wolf\Bone >nul
::made by xoElf, for use in larger projects that need some sort of login system.
::THINGS YOU COULD DO WITH THIS
::1. Remove the sign up feature and have the batch file automatically make accounts (or keys) and use a key system and distribute the keys to users (ill prob end up making this because i have so much freetime)
:main
title Log in to Batch
color F0
cls
echo Batch Account UI
echo ---------------------------
echo [1] Log In
echo [2] Sign Up
echo [3] Exit
echo.
set /p select=
if %select%==1 goto LogIn
if %select%==2 goto SignUp
if %select%==3 goto exit
goto error
:SignUp
cls
echo Sign Up
echo --------
echo.
set /p newname="Enter new username:"
if "%newname%"=="%newname%" goto addname
:addname
cd "%userprofile%\documents"
if exist "batchaccs" goto skip
if not exist "batchaccs" goto noskip
:noskip
md "batchaccs"
goto skip
:skip
cd "%appdata%\Mojang\Llama\Wolf\Bone"
if exist "%newname%.bat" goto namexist
if not exist "%newname%.bat" goto skip2
:skip2
echo set realusername=%newname%> "%newname%.bat"
goto next
:next
echo.
set /p pswd=Enter new Password:
if "%pswd%"=="%pswd%" goto addpass
:addpass
cd "%appdata%\Mojang\Llama\Wolf\Bone"
echo set password=%pswd%>> "%newname%.bat"
goto next1
:namexist
echo.
echo The entered username already exists.
echo Press any key to return. . .
pause >nul
goto 2
:next1
cls
echo Batch Account UI
echo -----------------
echo.
echo Your account has been created!
echo.
pause
goto main
:LogIn
cls
echo Batch Account UI Log In
echo ---------------------------
echo.
Set /p logname=Username:
if "%logname%"=="%logname%" goto LogIn2
:LogIn2
echo.
set /p logpass="Password:"
if "%logpass%"=="%logpass%" goto login
:login
cd "%appdata%\Mojang\Llama\Wolf\Bone" >nul
if exist "%logname%.bat" goto call
if not exist "%logname%.bat" goto errorlog
:call
call "%logname%.bat"
if "%password%"=="%logpass%" goto logdone
goto errorlog
:errorlog
color FC
echo.
echo Username or Password incorrect.
echo Access denied.
pause >nul
goto main
:logdone
cls
echo Batch Account UI
echo -----------------
echo.
echo Logged in!
echo.
pause
goto account
:exit
echo Goodbye!
timeout /NOBREAK 3 >nul
exit

:account
cls
cd "%appdata%\Mojang\Llama\Wolf\Bone"
call "%realusername%color.bat"
call "%realusername%.bat"
cls
@echo off
break off
Title Logged Into Batch Account UI
cls
echo YOURE IN!
::PUT YOUR CODE DOWN HERE!
pause >nul