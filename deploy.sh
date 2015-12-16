#!/usr/bin/env bash
PATH=$PATH:/usr/local/bin
pushd ../buildboard
meteor deploy buildboard.meteor.com --settings=../config-prod.json
popd

for path in "pmtool-tp" "codetool-github" "citool-travis"
do
    pushd ../$path
    git push production master
    popd
done