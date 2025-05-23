@echo off
setlocal enabledelayedexpansion

if "%~1"=="" (
    echo 請將檔案拖曳到這個bat檔上。
    pause
    exit /b
)

for %%f in (%*) do (
    echo 檔案: %%~nxf
    certutil -hashfile "%%f" SHA1 | findstr /V "certutil"
    echo.
)

pause
