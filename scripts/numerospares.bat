@echo OFF
cls 
:NUM
set /p num= Introduce un limite inf entre 1 y 999

if %num% gtr 999(
    echo.
    echo numero invalido
    goto NUM
)

if %num% lss 1(
    echo.
    echo numero invalido
    goto NUM
) 

set /p num2= Introduce un limite superior entre "%num%" y 999

if %num2% gtr 999(
    echo.
    echo numero invalido
    goto NUM
)

if %num2% lss %num% (
    echo.
    echo numero invalido
    goto NUM
) 


set div=1
:BUCLE
set /a resto=%num%%%div%
if %resto% equ 0(
    echo %div%
)
if %div% equ %mitad%(
    goto fin
)
set / a div=%div%+1(
    goto bucle
)
:Fin
set resto=
set div=
set num=
set mitad=
echo
echo pulsa una tecla
pause > null






