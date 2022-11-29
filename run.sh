#!/bin/bash -e

# build application
go build -o snowball_node cmd/node/main.go

# run 150 nodes
for i in {1..20}
do
  ./snowball_node -k 10 -alpha 7 -beta 15 -chainLen 5 -nChoices 2 &
done
