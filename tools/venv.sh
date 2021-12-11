#!/usr/bin/env bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
PYTHON=$SCRIPT_DIR/venv/bin/python3

echo "Creating Virtual Enviornment..."
python3 -m venv $SCRIPT_DIR/venv
echo "Updating pip..."
$PYTHON -m pip install --upgrade pip
echo "Installing Wheel..."
$PYTHON -m pip install --upgrade wheel
echo "Installing requirements..."
$PYTHON -m pip install -r $SCRIPT_DIR/../requirements.txt
