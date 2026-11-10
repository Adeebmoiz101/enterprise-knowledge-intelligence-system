@echo off
cd /d "%~dp0"
call .venv\Scripts\activate.bat
python manage.py build
python manage.py seed-demo
echo.
echo ===== alice (employee): reimbursement comparison =====
python ask.py --user alice "What changes were made to the employee reimbursement policy between 2024 and 2026?"
echo.
echo ===== alice: HR-only question (should be refused) =====
python ask.py --user alice "What form must a manager submit to report misconduct?"
echo.
echo ===== carol (HR): same question (should answer HR-17) =====
python ask.py --user carol "What form must a manager submit to report misconduct?"
echo.
pause
