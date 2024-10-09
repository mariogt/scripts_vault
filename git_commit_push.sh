#!/bin/bash

echo "------------------------"
echo "GIT COMMIT - PUSH"
echo "------------------------"
git status
git add .
git commit -a -m $1
git push
echo "Git repo updated and pushed to GitHub!"
