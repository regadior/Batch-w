@echo off
::%1 identifica o parametro pasado desde o prompt
:: Ejemplo -> borrar docum.txt
CLS
if exist %1(
	echo	
	del %1
	echo Arquivo eliminado
) else (
	echo.
	echo El archivo %1 no existe
	)
Pause