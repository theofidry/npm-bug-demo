#!/bin/bash

source ~/.nvm/nvm.sh

set -ev
nvm --version
nvm install "$NODE_JS_VERSION"
nvm use "$NODE_JS_VERSION"
node --version
