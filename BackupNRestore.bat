@echo off
title Backup N Restore Password N Settings By Mr.exe
setlocal enabledelayedexpansion

:: Lokasi backup
set backupDir=%~dp0Backup_Password

:: Buat folder backup jika belum ada
if not exist "%backupDir%" mkdir "%backupDir%"

:menu
cls
echo ====================================
echo        Backup & Restore Tools
echo ====================================
echo [1] Backup Password N Settings
echo [2] Restore Password N Settings
echo [3] Keluar
echo ====================================
set /p choice=Silakan pilih opsi (1-3): 

if "%choice%"=="1" goto backup
if "%choice%"=="2" goto restore
if "%choice%"=="3" exit

:: Jika input tidak valid, kembali ke menu
echo Pilihan tidak valid, silakan coba lagi.
pause
goto menu

:backup
cls
echo ====================================
echo       Backup Password & Settings
echo ====================================
echo.

:: Backup Registry N Konfigurasi WinRAR
echo [1] Backup WinRAR...
reg export "HKEY_CURRENT_USER\Software\WinRAR" "%backupDir%\WinRAR_Reg_Backup.reg" /y
if exist "%APPDATA%\WinRAR\winrar.ini" copy "%APPDATA%\WinRAR\winrar.ini" "%backupDir%\winrar.ini"

:: Backup Registry N Konfigurasi 7-Zip
echo [2] Backup 7-Zip...
reg export "HKEY_CURRENT_USER\Software\7-Zip" "%backupDir%\7Zip_Reg_Backup.reg" /y
if exist "%APPDATA%\7-Zip\7zFM.ini" copy "%APPDATA%\7-Zip\7zFM.ini" "%backupDir%\7zFM.ini"

:: Backup Registry N Konfigurasi WinZip
echo [3] Backup WinZip...
reg export "HKEY_CURRENT_USER\Software\Nico Mak Computing\WinZip" "%backupDir%\WinZip_Reg_Backup.reg" /y

:: Backup Registry N Konfigurasi PowerISO
echo [4] Backup PowerISO...
reg export "HKEY_CURRENT_USER\Software\PowerISO" "%backupDir%\PowerISO_Reg_Backup.reg" /y
if exist "%APPDATA%\PowerISO\PowerISO.ini" copy "%APPDATA%\PowerISO\PowerISO.ini" "%backupDir%\PowerISO.ini"

:: Backup Registry N Konfigurasi UltraISO
echo [5] Backup UltraISO...
reg export "HKEY_CURRENT_USER\Software\EasyBoot Systems\UltraISO" "%backupDir%\UltraISO_Reg_Backup.reg" /y
if exist "%APPDATA%\UltraISO\UltraISO.ini" copy "%APPDATA%\UltraISO\UltraISO.ini" "%backupDir%\UltraISO.ini"

echo.
echo ====================================
echo  Backup Selesai! Cek folder Backup_Password
echo ====================================
pause
goto menu

:restore
cls
echo ====================================
echo       Restore Password N Settings
echo ====================================
echo.

:: Cek apakah folder backup ada
if not exist "%backupDir%" (
    echo Backup tidak ditemukan! Silakan jalankan backup terlebih dahulu.
    pause
    goto menu
)

:: Restore Registry N Konfigurasi WinRAR
if exist "%backupDir%\WinRAR_Reg_Backup.reg" (
    echo [1] Restore Registry WinRAR...
    reg import "%backupDir%\WinRAR_Reg_Backup.reg"
)
if exist "%backupDir%\winrar.ini" (
    echo [1] Restore Konfigurasi WinRAR...
    copy /Y "%backupDir%\winrar.ini" "%APPDATA%\WinRAR\"
)

:: Restore Registry N Konfigurasi 7-Zip
if exist "%backupDir%\7Zip_Reg_Backup.reg" (
    echo [2] Restore Registry 7-Zip...
    reg import "%backupDir%\7Zip_Reg_Backup.reg"
)
if exist "%backupDir%\7zFM.ini" (
    echo [2] Restore Konfigurasi 7-Zip...
    copy /Y "%backupDir%\7zFM.ini" "%APPDATA%\7-Zip\"
)

:: Restore Registry N Konfigurasi WinZip
if exist "%backupDir%\WinZip_Reg_Backup.reg" (
    echo [3] Restore Registry WinZip...
    reg import "%backupDir%\WinZip_Reg_Backup.reg"
)

:: Restore Registry N Konfigurasi PowerISO
if exist "%backupDir%\PowerISO_Reg_Backup.reg" (
    echo [4] Restore Registry PowerISO...
    reg import "%backupDir%\PowerISO_Reg_Backup.reg"
)
if exist "%backupDir%\PowerISO.ini" (
    echo [4] Restore Konfigurasi PowerISO...
    copy /Y "%backupDir%\PowerISO.ini" "%APPDATA%\PowerISO\"
)

:: Restore Registry N Konfigurasi UltraISO
if exist "%backupDir%\UltraISO_Reg_Backup.reg" (
    echo [5] Restore Registry UltraISO...
    reg import "%backupDir%\UltraISO_Reg_Backup.reg"
)
if exist "%backupDir%\UltraISO.ini" (
    echo [5] Restore Konfigurasi UltraISO...
    copy /Y "%backupDir%\UltraISO.ini" "%APPDATA%\UltraISO\"
)

echo.
echo ====================================
echo  Restore Selesai!
echo ====================================
pause
goto menu
