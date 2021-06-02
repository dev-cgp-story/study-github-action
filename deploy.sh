#!/bin/zsh

git checkout -b temp/production
npm run build
git add -f build
git commit -m "Build 🍻"

git reset production
git switch production
git add -f build
git commit -m "Build 🍻"