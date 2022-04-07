:: INFORMACION SISTEMA
:: 1. Presentar data e hora
:: 2. Crear info.txt
::    -sistema operativo
::    -versi¢n do S.O.
::    -Etiqueta volume de disco
::    -usuario
::9.sair

::Introduce una opci¢n

@ECHO OFF
:menu
CLS
ECHO ***************************
ECHO *** INFORMACION SISTEMA ***
ECHO ***************************
ECHO.
ECHO 1. Presentar data e hora
ECHO 2. Crear info.txt
ECHO    -Sistema operativo
ECHO    -Version del S.O.
ECHO    -Etiqueta volume disco
ECHO    -usuario
ECHO 9. Sair

:opcion
    /set /p opc=Intrduce una opci¢n(Intro para acabar) :
    if "%opc%" equ "1" goto fechaHora
    if "%opc%" equ "1" crearInfo
    if "%opc%" equ "1" salir
    echo.
    echo Opci¢n no v lida 
goto opcion

:fechaHora
    cls
    echo.
    echo %date%
    echo %time%
    echo.
    pause
goto menu

:crearInfo
    cls
    echo.
    echo %os% > info2.txt
    ver >> info2.txt
    vol >> info2.txt
    echo %username% >> info2.txt
    echo.
    echo Se gener¢ info2.txt con la siguiente informaci¢n
    ::para q el usuario vea c¢mo qued¢ el archivo:
    type info2.txt
    pause
goto menu

:salir
echo.
echo Fin del programa
echo.
::liberamos las variables al acabar el procedimiento poniendo abajo el = sin nada.
set opc=
pause
exit

