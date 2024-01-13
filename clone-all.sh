#!/bin/sh

set -e

cd $(dirname $0)

for repo in $(cat repos.txt); do
  if ! [ -d repos/$repo ]; then
    echo "Cloning $repo"
    gh repo clone $repo repos/$repo
  fi
done
