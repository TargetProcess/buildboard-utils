#!/usr/bin/env bash

for path in "pmtool-tp" "codetool-github" "citool-travis"
do
    pushd ../$path
    rm -rf node_modules
    npm install
    popd
done