#!/bin/bash

cd $(dirname $0)/src

# Build Hello Goose
pack build hello-goose

# Push the image to Docker Hub
docker tag hello-goose emreyokur/hello-goose
docker push emreyokur/hello-goose
