#!/usr/bin/env bash

for path in "tool-tp" "tool-github" "tool-travis"
do
    pushd ../$path
    npm update buildboard-tool-bootstrap

    popd
done