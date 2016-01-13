#!/usr/bin/env bash
pushd ..
git clone git@github.com:buildboard/buildboard.git
git clone git@github.com:buildboard/tool-github.git
git clone git@github.com:buildboard/tool-tp.git
git clone git@github.com:buildboard/tool-travis.git
git clone git@github.com:buildboard/buildboard-tool-bootstrap.git
popd