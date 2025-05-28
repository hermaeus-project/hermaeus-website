#!/bin/bash
die() { 
    echo "$1"
    exit ${2:-1}
}

test -d .env.auto || python -m venv .env.auto 
. .env.auto/bin/activate || die "Failed to activate the python environment"
pip install -U pip || die "Failed to update pip"
pip install -r requirements.txt || die "Failed to install dependencies"
touch .env.auto/touchfile || die "Failed to create the touchfile"