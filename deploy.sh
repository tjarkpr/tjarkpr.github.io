#!/usr/bin/env sh
set -e
yarn run build
cd dist
git init
git add -A
git commit -m '[PROD] Deployment'
git push -f https://github.com/tjarkpr/tjarkpr.github.io.git main:page
cd -