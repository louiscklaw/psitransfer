#!/usr/bin/env bash

set -ex

rm -rf app/node_modules
rm -rf node_modules

cd app
  npm install &
cd ..
npm install &

wait

cd app
  npm run build
cd ..

npm start
