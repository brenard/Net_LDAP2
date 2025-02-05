#!/bin/bash

set -e

cd "$( dirname "$( realpath "$0" )" )"

rm -fr dist
mkdir dist

chglog init -o dist/changelog.yml
chglog format --template release -o dist/release_notes.md
nfpm pkg --packager deb --target ./dist/
