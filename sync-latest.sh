#!/bin/sh

set -e

cd $(dirname $0)

latest=$(ls -t $(gsed 's#^#repos/#;s#$#/.github/workflows/ghcr.yaml#' repos.txt) | head -n 1)

for repo in $(cat repos.txt); do
  if [ "$latest" != "repos/$repo/.github/workflows/ghcr.yaml" ]; then
    cp  -v $latest repos/$repo/.github/workflows/
  fi
done
