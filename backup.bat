@echo off
echo Iniciando el proceso de copia de seguridad completa...

REM Define la ruta donde se guardará la copia de seguridad
set BACKUP_PATH=E:\Backups

REM Define los volúmenes que se incluirán en la copia de seguridad
set BACKUP_VOLUMES=C: D: E:

REM Define la etiqueta de la copia de seguridad
set BACKUP_LABEL="BackupCompleto_%date:~-4,4%%date:~-7,2%%date:~-10,2%"

REM Ejecuta el comando wbadmin para iniciar la copia de seguridad
wbadmin start backup -backupTarget:%BACKUP_PATH% -include:%BACKUP_VOLUMES% -allCritical -vssFull -quiet -systemState

REM Verifica si la copia de seguridad se completó correctamente
if %errorlevel% equ 0 (
    echo Copia de seguridad completada con éxito.
) else (
    echo Error durante la copia de seguridad. Código de error: %errorlevel%
)

echo Proceso finalizado.
:: pause