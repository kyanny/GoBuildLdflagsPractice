#!/bin/sh
set -eux

rm -f ./main
version=$(git rev-parse --short HEAD)
go build -ldflags="-X 'main.Version=$version'" -o main
