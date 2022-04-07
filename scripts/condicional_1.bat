@ECHO OFF
TITLE - IF - 
REM probas da instrucción IF
CLS
ECHO.
SET /P tecla=teclee calquera caracter para ver unha mensaxe:
ECHO.
IF [%tecla%] EQU [] (CLS) ELSE (ECHO Benvido)
ECHO.
SET tecla=
PAUSE