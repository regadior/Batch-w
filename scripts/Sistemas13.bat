@echo off
title - MULTIPLOS -
::Script que hace muestra los multiplos de un numero elegido por el usuario dentro de un rango establecido por el usuario
cls
echo MULTIPLOS DENTRO DE UN RANGO!
echo.
echo Introduzca un numero y luego el rango inferior y superior para ver todos los multiplos de ese numero
pause
cls
:inicio
set /p multiplo=Introduce un numero(1-9999)
if "%multiplo%" EQU "" (
echo numero no valido
goto :inicio
)
if %multiplo% GTR 9999 (
echo Numero fuera de rango
goto :inicio
)
if %multiplo% LSS 1 (
echo Numero fuera de rango
goto :inicio
)
:inicio2
set /p limInf=Introduce limite inferior(1-9999)
if "%limInf%" EQU "" (
echo numero no valido
goto :inicio2
)
if %limInf% GTR 9999 (
echo Numero fuera de rango
goto :inicio2
)
if %limInf% LSS 1 (
echo Numero fuera de rango
goto :inicio2
)
:inicio3
set /p limSup=Introduce limite superior(%limInf%-9999)
if "%limSup%" EQU "" (
echo numero no valido
goto :inicio3
)
if %limSup% GTR 9999 (
echo Numero fuera de rango
goto :inicio3
)
if %limSup% LSS %limInf% (
echo Numero fuera de rango
goto :inicio3
)


set /a numAux= %limInf% %% %multiplo%
if NOT %numAux% EQU 0 (
set /a limInf=%limInf%+%multiplo% - %numAux%
)



:resultado
set /a vs = 1
FOR /L %%i IN (%limInf%,%multiplo%,%limSup%) do (
echo %%i
set /a vs = 0
)
if %vs% EQU 1 (
echo No hay multiplos
goto final
)
:final
set vs=
set multiplo=
set limInf=
set numAux=
set limSup=
set i=
pause
exit /b





