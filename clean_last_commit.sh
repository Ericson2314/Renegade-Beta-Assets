#!/bin/bash
set -v
shopt -s extglob

pushd `dirname $0`
git rm -r !(`git diff --cached --name-only untouched`)
git commit --amend
popd
