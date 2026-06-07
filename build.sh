#!/bin/bash

set -e

python3 -m venv venv

source venv/bin/activate

pip install --upgrade pip

if [ -f requirements.txt ]; then
    pip install -r requirements.txt
fi

python3 -m unittest discover
