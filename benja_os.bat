@echo off
:: Desactiva el cierre automatico si hay un error grave
if not "%1"=="am_admin" (
    powershell -Command "Start-Process -FilePath '%0' -ArgumentList 'am_admin' -Verb RunAs" && exit
)

title benja os WINDOWS 11 hecho por Benja
color 1f
cd /d "%~dp0"

:inicio
cls
echo =======================================================
echo          benja os (WINDOWS 11)  hecho por Benja   
echo =======================================================
echo.
echo  [1] Ver Estado de benja os 
echo  [2] Fijar Nueva os
echo  [3] Salir
echo.
echo =======================================================
set /p opt="Selecciona una opcion (1-3) y presiona ENTER: "

if "%opt%"=="1" goto Estado
if "%opt%"=="2" goto benja_os
if "%opt%"=="3" exit
goto inicio

:Estado
cls
echo Generando ventana...
echo MsgBox "Conectado.", 64, "benja OS" > "%temp%\msg.vbs"
start "" "%temp%\msg.vbs"
timeout /t 2 > nul
goto inicio

:benja_os
cls
echo Conectando...
echo MsgBox "Conectando.", 64, "benja OS" > "%temp%\msg.vbs"
start "" "%temp%\msg.vbs"
timeout /t 2 > nul
goto inicio
