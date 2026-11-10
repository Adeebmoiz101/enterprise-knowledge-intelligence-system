@echo off
cd /d "%~dp0"
echo Creating virtual environment...
python -m venv .venv
if errorlevel 1 (echo Python was not found. Install Python 3.12 or newer from python.org and tick "Add to PATH". & pause & exit /b 1)
call .venv\Scripts\activate.bat
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
if errorlevel 1 (echo Install failed. Copy the error above and ask for help. & pause & exit /b 1)
echo.
echo Setup finished. Next: double-click run_demo.bat
pause
