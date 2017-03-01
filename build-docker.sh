#!/bin/bash

IMAGE_NAME="dynamodb-cross-region-replication"
VERSION=$( xmlstarlet sel -t -v '/_:project/_:version' pom.xml )

echo "Building $IMAGE_NAME : $VERSION"

docker build -t $IMAGE_NAME:$VERSION .
