@echo off
title -Suma-
::Programa que suma de forma infinita
echo. Programa que suma numeros en un bucle infinito hasta que se termine
cls
:Repetir
set /p Suma=Introduce un numero(Intro para salir):
echo.
if  "%Suma%" NEQ "" (

	set /a total=%total%+%suma%

	set /a i=%i%+1
	echo.
	set suma=
	GOTO Repetir
)
if "%i%" NEQ "" (
echo el total de veces sumado %i%
echo El total es %total%
) else (
	echo No se introdujo ningun numero
)
set Suma=
set Total=
set i=
pause
exit /b