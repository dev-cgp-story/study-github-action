#!/bin/zsh

set -x

git switch production
git merge --no-ff --no-edit master 

git checkout -b temp/production
npm run build
git add -f build
git commit -m "Build 🍻"

git reset production
git add -f build
git commit -m "Build 🍻"