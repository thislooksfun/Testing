#!/bin/bash

set -e

echo "Running tests!"

if [ $TRAVIS_EVENT_TYPE == "push" ]; then
  DATA="{\"title\":\"It's working!\",\"head\":\"$TRAVIS_BRANCH\",\"base\":\"master\"}"
  URL="https://api.github.com/repos/$TRAVIS_REPO_SLUG/pulls"
  
  echo "Creating PR with data:"
  echo "> $DATA"
  echo "> $URL"
  
  curl -u "$BOT_NAME:$BOT_PWD" -H "Content-Type: application/json" "https://api.github.com/user"
  curl -u "$BOT_NAME:$BOT_PWD" -H "Content-Type: application/json" "$URL"
  curl -u "$BOT_NAME:$BOT_PWD" -H "Content-Type: application/json" -X POST -d "$DATA" "$URL"
else
  echo "Build is not a push -- skipping!"
fi