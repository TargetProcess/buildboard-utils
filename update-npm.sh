#!/usr/bin/env bash

for path in "tool-tp" "tool-github" "tool-travis"
do
    pushd ../$path
    rm -rf node_modules
    npm install
    popd
done