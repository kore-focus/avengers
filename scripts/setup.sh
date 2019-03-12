#! /usr/bin/env bash

# install the main dependency specifically install lerna
npm install

# allow lerna to take over
# hoist is needed to make sure we symlink the dependencies at the
# root dir
lerna bootstrap --hoist
