#!/bin/bash
die() { 
    echo "$1"
    exit ${2:-1}
}
echo "Activate the python environment .env.auto"
. .env.auto/bin/activate || die "Failed to activate the python environment"

echo "Build website locally"
mkdocs build