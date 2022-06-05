@echo off
title - contrasena -
::Programa que introduce contrase¤a con GOTO
cls
:Repetir
set /p contrasena=Introduce contrase¤a:
echo.
if  %contrasena% NEQ abcd (
	echo Contrase¤a incorrecta
	Pause
	echo.
	GOTO Repetir
)
echo Contrase¤a correcta
set contrasena=
pause
exit /b