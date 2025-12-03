@echo off
setlocal
set PORT=8000

echo Starting simple server on http://localhost:%PORT%/
echo Press Ctrl+C to stop.
echo.
echo If Python is not installed, install from https://www.python.org/downloads/ or run:
echo   winget install --id=Python.Python.3  -e
echo.

where python >nul 2>&1
if %errorlevel% neq 0 (
    echo Python not found in PATH.
    pause
    exit /b 1
)

python -m http.server %PORT%
