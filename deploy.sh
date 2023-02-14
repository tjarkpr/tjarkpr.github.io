#!/usr/bin/env sh
set -e
yarn run build
cd dist
git init
git add -A
git commit -m '[PROD] Deployment'
git push -f git@github.com:tjarkpr/tjarkpr.github.io.git master:page
cd -