@echo off
cd /d "%~dp0"
call .venv\Scripts\activate.bat
python manage.py build
echo API docs: http://127.0.0.1:8000/docs   (Ctrl+C to stop)
python -m uvicorn api:app --port 8000
