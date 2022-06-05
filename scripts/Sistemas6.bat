@echo off
title - contrasena -
::Programa que introduce contraseña con GOTO
cls
:Repetir
set /p contrasena=Introduce contrasena:
echo.
if  '%contrasena%' NEQ '0000' (
	echo Contrasena incorrecta
	Pause
	echo.
	GOTO Repetir
)
echo Contrasena correcta
set contrasena=
pause
exit /b