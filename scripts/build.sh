#! /usr/bin/env bash

set -u -e -o pipefail

readonly work_dir=$(pwd)

echo "######################"
echo "Building all packages"
echo "######################"

# build out all the packages
npx lerna run build

echo ""
echo "######################"
echo "Building docker images"
echo "######################"

echo ""
echo "building captain-america"
docker build \
  -f ${work_dir}/packages/captain-america/Dockerfile \
  -t captain-america:latest \
  ${work_dir}/packages/captain-america

echo ""
echo "######################"
echo "COMPLETE!"
echo "######################"
exit 0
