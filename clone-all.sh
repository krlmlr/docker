#!/bin/sh

repositories="krlmlr/rigraph-san krlmlr/rig-centos7 krlmlr/r-minimal cynkra/rig-ubuntu-igraph cynkra/rig-ubuntu cynkra/rig-ubuntu-duckdb cynkra/dm r-dbi/RPostgres"

for repo in $repositories; do
  gh repo clone $repo repos/$repo
done
