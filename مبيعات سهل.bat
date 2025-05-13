@echo off
echo تشغيل تطبيق مبيعات سهل...
echo.

REM التحقق من تثبيت Node.js
node --version > nul 2>&1
if %errorlevel% neq 0 (
  echo لم يتم العثور على Node.js. يرجى تثبيته من https://nodejs.org/
  start https://nodejs.org/
  pause
  exit /b 1
)

REM تثبيت حزمة serve إذا لم تكن موجودة
npm list -g serve > nul 2>&1
if %errorlevel% neq 0 (
  echo تثبيت حزمة serve...
  npm install -g serve
)

REM تشغيل الخادم
cd /d "%~dp0"
start "" "http://localhost:3000"
npx serve -s dist -p 3000
