
::REVISAR SI FALTAN COSAS 

::Programa para sumar números de forma continua hasta pulsar intro

@ECHO OFF
CLS
echo *********************
echo *** SUMA CONTINUA ***
echo *********************
echo.
echo Programa que introduce la suma total de los numeros
echo que vayas introduciendo
echo.
echo Pulse una tecla para comenzar el programa 
pause > nul
CLS
SET cont=0
SET suma=0

:BUCLE
SET /P num=Introduce un numero (Intro para terminar):
IF "%num%" equ "" GOTO RESULTADO
SET /A cont=%cont%-1
SET /A suma=%suma%+%num%
SET num=
GOTO BUCLE  


:RESULTADO
::Aquí contemplamos lo q pasa cuando el usuario no intruduce ningún número
IF %cont%==0 (   
    ECHO.
    ECHO Non introduciches ningun numero
) ELSE (
    ECHO.
    ECHO Introduciches %cont% numero/set
    ECHO A suma total deses numeros e %suma%
)

:FIN
SET num=
SET cont=
SET suma=
ECHO.
ECHO Preme unha tecla para sair...
PAUSE>NUL

