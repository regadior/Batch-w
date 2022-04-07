@ECHO OFF
CLS
::La siguiente instrucción copia a la disquetera (nosotros ya no tenemos disquetera)
XCOPY ejemplo.txt a:\\  
IF ERRORLEVEL 1 (
    ECHO Erro durante a copia
) ELSE (
    ECHO Copia correcta
)
ECHO.
PAUSE