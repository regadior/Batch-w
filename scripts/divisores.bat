
@ECHO OFF
cls

:NUM
SET /p num= Introduza un nÃºmero enteiro entre 1 e 999: 

IF %num% GTR 999 (
    ECHO.
    ECHO N£mero inv ¡lido
    GOTO NUM
) 

IF %num% LSS 1 (
    ECHO.
    ECHO N£mero inv ¡lido
    GOTO NUM
) 
 
SET div=1
set /a mistad=%num%/2
:BUCLE
SET /a resto=%num%%%div%
IF %resto% equ 0 (
    echo %div%
) 

IF %div% equ %mitad% (
    GOTO FIN
)

set /a div=%div%+1
GOTO BUCLE

:FIN
ECHO %num%
set resto=
set div=
set num=
set mitad=
ECHO.
ECHO Prema calqueira tecra para salir...
PAUSE > NUL