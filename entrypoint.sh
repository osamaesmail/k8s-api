#!/bin/sh
cd /app

if [ ! -d "./node_modules" ]; then
  npm i
fi

node index.js
