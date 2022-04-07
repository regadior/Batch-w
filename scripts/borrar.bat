@ECHO OFF
:: %1 identifica o parámetro pasado desde o prompt
:: Exemplo -->borrar docum.txt
CLS
IF EXIST %1 (
    ECHO.
    DEL %1
    ECHO Archivo eliminado
) ELSE (
    ECHO.
    ECHO O arquivo %1 non existe
)  
PAUSE

::OJO CON LOS ESPACIOS EN BLANCO