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
choice /c 123456789 /n /M "Seleccione opcion(0-9)"
if errorlevel 9 (
goto final
)
if errorlevel 8 (
set modificador=/r /+45 alumnos.txt
goto presentar
)
if errorlevel 7 (
set modificador=/+45 alumnos.txt
goto presentar
)
if errorlevel 6 (
set modificador=/r /+29 alumnos.txt
goto presentar
)
if errorlevel 5 (
set modificador=/+29 alumnos.txt
goto presentar
)
if errorlevel 4 (
set modificador=/r /+5 alumnos.txt
goto presentar
)
if errorlevel 3 (
set modificador=/+5 alumnos.txt
goto presentar
)
if errorlevel 2 (
set modificador=/r alumnos.txt
goto presentar
)
if errorlevel 1 (
set modificador=alumnos.txt
goto presentar
)
echo %modificador%

:presentar
sort %modificador%

choice /c ns /n /m "Desea guardar el archivo  "
if errorlevel 2 (
goto guardado
)
if errorlevel 1 (
goto :menu
)

:guardado
set /p nombre=Que nombre le vas a poner al archivo  
if "%nombre%" EQU "" (
echo nombre no valido
goto guardado
)
if exist %nombre%.txt (
echo El archivo %nombre%.txt ya existe
echo Elige otro nombre
goto guardado
)
echo Cod         Apellidos         Nombre             Edad > %nombre%.txt     
echo ______________________________________________________>> %nombre%.txt
sort %modificador% >> %nombre%.txt
goto menu

:final
set modificador=
pause
exit / b