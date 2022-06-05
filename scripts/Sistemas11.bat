@echo off
title - Numero Par -
::Muestra los numeros pares entre un limite superior e inferior introducidos por el usuario
cls
echo NUMEROS PARES!
echo.
echo Este programa permite introducir un limite superior y otro inferior y mostrar los numeros pares entre estos limites
pause
cls

:inicio
set /p limInf=Introduce limite inferior(1-999)
if "%limInf%" EQU "" (
echo numero no valido
goto :inicio
)
if %limInf% GTR 999 (
echo Numero fuera de rango
goto :inicio
)
if %limInf% LSS 1 (
echo Numero fuera de rango
goto :inicio
)
:inicio2
set /p limSup=Introduce limite superior(%limInf%-999)
if "%limSup%" EQU "" (
echo numero no valido
goto :inicio2
)
if %limSup% GTR 999 (
echo Numero fuera de rango
goto :inicio2
)
if %limSup% LSS %limInf% (
echo Numero fuera de rango
goto :inicio2
)
set /a NumAux=%limInf% %% 2
if %NumAux% NEQ 0 (
set /a limInf=%limInf%+1
)
:PARES
if %limInf% GTR %limSup% (
goto final
)
echo %limInf%
set /a limInf=%limInf%+2
goto :pares

:final
set limInf=
set limSup=
set NumAux=
pause
exit /b



