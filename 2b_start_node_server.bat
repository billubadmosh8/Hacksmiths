@echo off
title Smart Campus Analytics - Node.js Backend
color 0C

echo.
echo  ╔═══════════════════════════════════════════════╗
echo  ║  Smart Campus Analytics - KPMG Hackathon      ║
echo  ║  Starting Node.js Backend (Alternative)       ║
echo  ╚═══════════════════════════════════════════════╝
echo.

where node >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo  [ERROR] Node.js not found!
    echo  Install from https://nodejs.org
    pause
    exit /b 1
)

echo  [OK] Node.js found!
echo  [INFO] Starting server on port 8080...
echo  [INFO] Keep this window open!
echo.

node backend\server_node.js

pause
