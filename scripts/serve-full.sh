#!/bin/bash
die() { 
    echo "$1"
    exit ${2:-1}
}
echo "Fetch remote github page content"
git fetch origin gh-pages:gh-pages || die "Failed to fetch remote branches"
git pull origin gh-pages

echo "Activate the python environment .env.auto"
. .env.auto/bin/activate || die "Failed to activate the python environment"

echo "Serve the published website including the versions"
mike serve || die "Failed to start the server"