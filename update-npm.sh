#!/usr/bin/env bash

for path in "tool-tp" "tool-github" "tool-travis"
do
    pushd ../$path
    echo rm
    rm -rf node_modules
    echo install
    npm install

    popd
done