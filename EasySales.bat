@echo off
echo Starting Easy Sales Application...
echo.

REM Check if Node.js is installed
node --version > nul 2>&1
if %errorlevel% neq 0 (
  echo Node.js not found. Please install it from https://nodejs.org/
  start https://nodejs.org/
  pause
  exit /b 1
)

REM Install serve package if not already installed
npm list -g serve > nul 2>&1
if %errorlevel% neq 0 (
  echo Installing serve package...
  npm install -g serve
)

REM Run server
cd /d "%~dp0"
start "" "http://localhost:3000"
npx serve -s dist -p 3000
