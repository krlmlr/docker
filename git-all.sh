#!/bin/sh

set -e

cd $(dirname $0)

export GIT_PAGER=cat

for repo in $(cat repos.txt); do
  echo '#' $repo
  git -C repos/$repo "$@"
done
