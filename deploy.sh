#!/usr/bin/env bash
hugo
commit="no message for this commit"
[[ "${1}" ]] && commit=${1}

cd public
git checkout main
git add .
git commit -m "${commit}"
git push origin main

cd ..
git checkout main
git add .
git commit -m "${commit}"
git push origin main
