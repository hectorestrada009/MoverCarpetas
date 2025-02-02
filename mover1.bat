@echo off
setlocal enabledelayedexpansion

:: Definir las rutas de origen y destino
set "origen=C:\Users\Hector Estrada\Desktop\origen"
set "destino=C:\Users\Hector Estrada\Desktop\destino"

:: Obtener la fecha y hora actual
for /f "tokens=1-4 delims=/: " %%a in ('echo %date% %time%') do (
    set "fecha=%%a-%%b-%%c"
    set "hora=%%d"
)

:: Reemplazar los caracteres no válidos en la fecha y hora
set "fecha=%fecha:/=-%"
set "hora=%hora::=-%"

:: Crear el nuevo nombre de la carpeta con la fecha y hora
set "nuevo_nombre=respaldoTEMPO_%fecha%_%hora%"

:: Mover la carpeta y cambiarle el nombre
move "%origen%" "%destino%\%nuevo_nombre%"

::echo Carpeta movida y renombrada a: %destino%\%nuevo_nombre%
pause