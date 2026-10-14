@echo off
title Smart Campus Analytics - Open Dashboard
color 0E

echo.
echo  ╔═══════════════════════════════════════════════╗
echo  ║  Smart Campus Analytics - KPMG Hackathon      ║
echo  ║  Opening Dashboard in Browser...              ║
echo  ╚═══════════════════════════════════════════════╝
echo.
echo  Make sure 2_start_server.bat is running first!
echo.

start "" "frontend\index.html"

echo  [OK] Dashboard opened in default browser.
echo.
timeout /t 3
