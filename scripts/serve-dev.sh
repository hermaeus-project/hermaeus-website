#!/bin/bash
die() { 
    echo "$1"
    exit ${2:-1}
}
echo "Activate the python environment .env.auto"
. .env.auto/bin/activate || die "Failed to activate the python environment"

echo "Serve local version of the documentation"
mkdocs serve || die "Failed to start the server"