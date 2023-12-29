#!/bin/sh

set -e

cd $(dirname $0)

for repo in $(cat repos.txt); do
  gh repo clone $repo repos/$repo
done
