@echo off
title Smart Campus Analytics - Compile C Server
color 0A

echo.
echo  ╔═══════════════════════════════════════════════╗
echo  ║  Smart Campus Analytics - KPMG Hackathon      ║
echo  ║  Compiling C Backend Server...                ║
echo  ╚═══════════════════════════════════════════════╝
echo.

:: Try standard GCC first
where gcc >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    set GCC=gcc
    goto :compile
)

:: Try MSYS2 GCC
if exist "C:\msys64\mingw64\bin\gcc.exe" (
    set GCC=C:\msys64\mingw64\bin\gcc.exe
    echo  [OK] Found GCC at C:\msys64\mingw64\bin\gcc.exe
    goto :compile
)

echo  [ERROR] GCC compiler not found!
echo.
echo  Options:
echo  1. MSYS2 was installed. Open MSYS2 MinGW 64-bit from Start Menu and run:
echo     pacman -S mingw-w64-x86_64-gcc
echo  2. Or just use the Node.js server: double-click 2b_start_node_server.bat
echo.
pause
exit /b 1

:compile
echo  [OK] GCC found!
echo  [..] Compiling server.c ...
echo.

%GCC% -o backend\server.exe backend\server.c -lws2_32 -lm -Wall -O2

if %ERRORLEVEL% EQU 0 (
    echo  [SUCCESS] server.exe compiled successfully!
    echo.
    echo  ╔═══════════════════════════════════════════════╗
    echo  ║  Now run: 2_start_server.bat                  ║
    echo  ║  Then open: frontend\index.html               ║
    echo  ╚═══════════════════════════════════════════════╝
) else (
    echo  [FAILED] Compilation failed. Check errors above.
    echo.
    echo  TIP: Use 2b_start_node_server.bat instead (no compilation needed)
)

echo.
pause
