#!/bin/bash
set -v;

NPM_VERSIONS=("3.9.0" "3.8.9" "3.8.8" "3.8.7" "3.8.6" "3.8.5" "3.8.4" "3.8.3" "3.8.2" "3.8.1" "3.8.0" "3.7.5" "3.7.4" "3.7.3" "3.7.2" "3.7.1" "3.7.0" "3.6.0" "3.5.4" "3.5.3" "3.5.2" "3.5.1" "3.5.0" "3.4.1" "3.4.0" "3.3.9" "3.3.8" "3.3.7" "3.3.6" "3.3.5" "3.3.4" "3.3.3" "3.3.2" ".3.12" ".3.11" ".3.10" "3.3.1" "3.3.0" "3.2.2" "3.2.1" "3.2.0" "3.1.3" "3.1.2" "3.1.1" "3.1.0" "3.0.0");

for version in $NPM_VERSIONS; do
    rm -rf node_modules >/dev/null;
    echo "installing npm $version";
    npm install -g npm@$version >/dev/null;
    npm install &>/dev/null && echo "version $version works" || true;
done;