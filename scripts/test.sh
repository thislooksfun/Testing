#!/bin/bash

set -e

echo "Running tests!"

if [ TRAVIS_PULL_REQUEST == "false" ]; then
  echo "Creating PR with data:"
  echo "> "'{"title":"It'\''s working!","head":"'"$TRAVIS_REPO_SLUG:$TRAVIS_BRANCH"'","base":"master"}' \
  echo "> https://github.com/repos/$TRAVIS_REPO_SLUG/pulls"
  
  
  curl \
    -H "Content-Type: application/json" \
    -X POST \
    -d '{"title":"It'\''s working!","head":"'"$TRAVIS_REPO_SLUG:$TRAVIS_BRANCH"'","base":"master"}' \
    "https://github.com/repos/$TRAVIS_REPO_SLUG/pulls"
else
  echo "Build is a pull request (#$TRAVIS_PULL_REQUEST) -- skipping!"
fi