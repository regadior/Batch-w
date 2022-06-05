@echo off
title - Numeros Impares -
::Muestra al usuario los numeros impares de un rango inferior a un rango superior, siendo el rango introducido por el usuario

cls
echo NUMEROS IMPARES!
echo.
echo Muestra los numeros impares dentro de un rango introducido por el usuario!
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
if %NumAux% EQU 0 (
set /a limInf=%limInf%+1
)
FOR /L %%i IN (%limInf%,2,%limSup%) DO (
echo %%i
)
set limInf=
set NumAux=
set limSup=
set i=
pause
exit /b



