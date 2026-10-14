@echo off
title Smart Campus Analytics - C Backend Server
color 0B

echo.
echo  ╔═══════════════════════════════════════════════╗
echo  ║  Smart Campus Analytics - KPMG Hackathon      ║
echo  ║  Starting C Backend Server on port 8080...    ║
echo  ╚═══════════════════════════════════════════════╝
echo.

if not exist "backend\server.exe" (
    echo  [ERROR] server.exe not found!
    echo  Please run 1_compile_server.bat first.
    echo.
    pause
    exit /b 1
)

echo  [OK] Starting server...
echo  [INFO] Keep this window open while using the dashboard!
echo.
echo  API Endpoints:
echo    http://localhost:8080/api/stats
echo    http://localhost:8080/api/students
echo    http://localhost:8080/api/student/1
echo.
echo  ─────────────────────────────────────────────────
echo.

backend\server.exe

pause
