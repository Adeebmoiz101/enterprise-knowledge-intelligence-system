@echo off
rem Real models: first run  pip install -r requirements-ml.txt  (large download, internet needed).
cd /d "%~dp0"
call .venv\Scripts\activate.bat
set ERAG_EMBEDDER=bge-small
set ERAG_RERANKER=cross-encoder
python manage.py build
echo API docs: http://127.0.0.1:8000/docs   (Ctrl+C to stop)
python -m uvicorn api:app --port 8000
