@echo off
title -  Sumatorio  -
::Programa que el usuario introduce numeros y se muestra, suma, mayor, menor y total de numeros
cls
echo Contador!
echo Introduzca numeros para calcular el mayor, el menor, la suma total y el numero de numeros introducidos!
echo intro para salir!

set cont=0
set numMay=-1000
set numMen=1000
set suma=0


:inicio
set /p num=Introduce numero dentro del rango(-999 y 999)

if "%num%" EQU "" (
goto resultado
)
if %num% GTR 999 (
echo numero fuera de rango!
goto inicio
)
if %num% LSS -999 (
echo numero fuera de rango!
goto inicio
)

if %num% LSS %numMen% (
set numMen= %num%

)

if %num% GTR %numMay% (
set /a numMay= %num%

)
set /a suma = %suma% + %num%
set /a cont= %cont% + 1
set num=
goto inicio

:resultado

if "%cont%" EQU "0" (
echo No hay numeros introducidos
) else (
set /a media = %suma% / %cont%
echo Número de menor valor.......: %numMen% 
echo Número de mayor valor.......: %numMay%
echo Numeros introducidos........: %cont%
echo Suma total de los numeros...: %suma%
echo Media total.................: %media%
)
set num=
set numMay=
set numMen=
set suma=
set media=
set cont=

pause
exit /b





