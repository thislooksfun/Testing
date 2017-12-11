#!/bin/bash

set -ev

echo "Running tests!"

if [ TRAVIS_PULL_REQUEST == false ]; then
  curl \
    -H "Content-Type: application/json" \
    -X POST \
    -d '{"title":"It'\''s working!","head":"'"$TRAVIS_REPO_SLUG:$TRAVIS_BRANCH"'","base":"master"}' \
    "https://github.com/repos/$TRAVIS_REPO_SLUG/pulls"
else
  echo "Build is a pull request (#$TRAVIS_PULL_REQUEST) -- skipping!"
fi