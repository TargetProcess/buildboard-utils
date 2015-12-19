#!/usr/bin/env bash
PATH=$PATH:/usr/local/bin
pushd ../buildboard
meteor deploy buildboard.meteor.com --settings=../config-prod.json
popd

for path in "tool-tp" "tool-github" "tool-travis"
do
    pushd ../$path
    git deploy upload ../config-prod.json -r production
    git push production master
    popd
done