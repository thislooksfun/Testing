#!/bin/bash

set -e

echo "Running tests!"

if [ $TRAVIS_PULL_REQUEST == false ]; then
  DATA="{\"title\":\"It's working!\",\"head\":\"$TRAVIS_BRANCH\",\"base\":\"master\"}"
  URL="https://api.github.com/repos/$TRAVIS_REPO_SLUG/pulls"
  
  echo "Creating PR with data:"
  echo "> $DATA"
  echo "> $URL"
  
  curl -H "Content-Type: application/json" -X POST -d "$DATA" "$URL"
else
  echo "Build is a pull request (#$TRAVIS_PULL_REQUEST) -- skipping!"
fi