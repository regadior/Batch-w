@echo off
cls
echo Explicacion do programa
set /p numero1= Introduza un numero:
echo.
set /p numero2= Introduza outro numero:
echo.
echo.
set /a resultado=%numero1%+%numero2%
echo o resultado ‚ %resultado%
echo.
echo pulsa una tecla para continuar
pause > null
rem liberar variables
set numero1=
set numero2=
set resultado=
