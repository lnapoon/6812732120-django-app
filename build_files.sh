#!/bin/bash
echo "=== Django Vercel Build Script ==="
echo "1. Checking Python version:"
python3 --version || python --version

echo "2. Checking Pip version:"
python3 -m pip --version || pip3 --version || pip --version

echo "3. Installing dependencies from requirements.txt..."
python3 -m pip install -r requirements.txt

echo "4. Collecting static files..."
python3 manage.py collectstatic --noinput --clear

echo "=== Build Completed Successfully ==="
