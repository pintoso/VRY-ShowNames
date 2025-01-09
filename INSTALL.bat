@echo off
REM Check if Python is installed
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo.
    echo.
    echo.
    echo.
    echo.
    echo.
    echo Python is not installed. Please install Python and try again.
    echo.
    echo.
    echo.
    echo Press any key to exit...
    pause >nul
    exit /b
)

REM Install requirements from requirements.txt
pip install -r requirements.txt
if %errorlevel% neq 0 (
    echo.
    echo.
    echo.
    echo.
    echo There was an error installing the requirements. Please check the output above for more details.
    echo.
    echo.
    echo.
    echo Press any key to exit...
    pause >nul
    exit /b
)

REM Success message
echo.
echo.
echo.
echo.
echo.
echo.
echo Requirements were successfully installed.
echo Use START.bat to start.
echo.
echo.
echo.
echo Press any key to exit...
pause >nul
