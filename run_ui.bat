@echo off
cd /d "%~dp0"
call .venv\Scripts\activate.bat
echo Open http://localhost:8501 and paste a token from data\demo_tokens.json
python -m streamlit run streamlit_app.py
