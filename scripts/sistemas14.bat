@echo off
title - Ordenar -
::Programa que ordena los alumnos segun el usuario quiera
cls
cd C:\Users\DA-1\desktop
echo Programa que ordena nombres dentro de un archivo, segun el usuario dese
echo.
echo Pulse tecla para continuar
set modificador=
pause
:menu
echo ---------------------
echo  Menu de ordenacion
echo ---------------------
echo.
echo 1. Por codigo[0-9]
echo 2. Por codigo[9-0]
echo 3. Por apellido[A-Z]
echo 4. Por apellido[Z-A]
echo 5. Por nombre[A-Z]
echo 6. Por nombre[Z-A]
echo 7. Por edad[0-9]
echo 8. Por edad[9-0]
echo 9. Salir

echo.
choice /c 123456789 /n /M Seleccione opcion(0-9)
if %errorlevel% EQU 1 set modificador=alumnos.txt
if %errorlevel% EQU 2 set modificador=/r alumnos.txt
if %errorlevel% EQU 1 set modificador=/+5 alumnos.txt
if %errorlevel% EQU 1 set modificador=/r /+5 alumnos.txt
if %errorlevel% EQU 1 set modificador=/+29 alumnos.txt
if %errorlevel% EQU 1 set modificador=/r /+29 alumnos.txt
if %errorlevel% EQU 1 set modificador=/+45 alumnos.txt
if %errorlevel% EQU 1 set modificador=/r /+45 alumnos.txt






set /p op=Introduce una opcion
if "%op%" EQU "" (
echo Introduce una opcion correcta
goto menu
)
if %op% GTR 9 (
echo Opcion incorrecta
goto menu
)
if %op% LSS 1 (
echo Opcion incorrecta
goto menu
)
if "%op%" EQU "1" (
set modificador=alumnos.txt
)
if "%op%" EQU "2" (
set modificador=/r alumnos.txt
)
if "%op%" EQU "3" (
set modificador=/+5 alumnos.txt
)
if "%op%" EQU "4" (
set modificador=/r /+5 alumnos.txt
)
if "%op%" EQU "5" (
set modificador=/+29 alumnos.txt
)
if "%op%" EQU "6" (
set modificador=/r /+29 alumnos.txt
)
if "%op%" EQU "7" (
set modificador=/+45 alumnos.txt
)
if %op% EQU 8 (
set modificador=/r /+45 alumnos.txt
)
if %op% EQU 9 (
goto :fin
)
set op=
sort %modificador%
goto menu



:fin
set modificador=
set op=
pause
exit /b







