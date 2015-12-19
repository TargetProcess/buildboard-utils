#!/usr/bin/env bash
PATH=$PATH:/usr/local/bin
for path in "pmtool-tp" "codetool-github" "citool-travis"
do
    pushd ../$path
    git deploy upload ../config-prod.json -r production
    git deploy rerun -r production
    popd
done