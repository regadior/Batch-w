@echo off
::Lista de divisores enteros de un num solicitado
cls
echo Divisor!
echo Programa que muestra todos los divisores de un numero entre 1 y 999
pause
cls
:RepNum
set /p num=Introduce un numero(entre 1-999)


if "%num%" LSS "1" (
echo Numero no valido
goto RepNum
)
if "%num%" GTR "999" (
echo Numero no valido
goto RepNum
)
set i = 1
set numDiv = 0
set /a numMitad = %num% / 2

:RepDiv
if %i% GTR %numMitad%  (
goto Final
)
set /a numDiv = %num% %% %i%

if %numDiv% EQU 0 (
echo %i%
)

set /a i = %i% + 1
goto :RepDiv





:final
set numMitad=
set num=
set i=
set numDiv=
pause
exit /b
