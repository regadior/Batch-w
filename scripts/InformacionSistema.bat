:: INFORMACION SISTEMA
:: 1. Presentar data e hora
:: 2. Crear info.txt
::    -sistema operativo
::    -versión do S.O.
::    -Etiqueta volume de disco
::    -usuario
::9.sair

::Introduce una opción

@ECHO OFF
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
ECHO.
ECHO Introduzca una opcion
pause > nul
CLS
SET opcion=0


OPCIONES:
IF %opcion%==1 (
    ECHO date /t
    ECHO time /t
)
IF %opcion%==2 (
    COPY CON info.txt
)
IF %opcion%==9 (



