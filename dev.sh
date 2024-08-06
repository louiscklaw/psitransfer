#!/usr/bin/env bash

set -ex

rm -rf app/node_modules
rm -rf node_modules

cd app
  npm i -D &
cd ..
npm i -D &

wait

cd app
  npm run dev &
cd ..

npm run dev
