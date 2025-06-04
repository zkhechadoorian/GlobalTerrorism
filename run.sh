#!/bin/bash

# Step 1: Create virtual environment
echo "Creating virtual environment..."
python3 -m venv .venv

# Step 2: Activate virtual environment
echo "Activating virtual environment..."
source .venv/bin/activate

# Step 3: Install dependencies
echo "Installing dependencies from requirements.txt..."
pip install --upgrade pip
pip install -r requirements.txt

# ✅ Step 3.5: Install Jupyter Notebook
echo "Installing Jupyter Notebook..."
pip install notebook

# Step 4: Launch Jupyter Notebook
echo "Launching Jupyter Notebook..."
jupyter notebook --no-browser --ip=0.0.0.0 --port=8888
