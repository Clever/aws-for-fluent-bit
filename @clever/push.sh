#!/usr/bin/env bash
set -e

# pushes the fluent-bit-image build locally as version
VERSION=1.2.2
IMAGE=d8bb05e93465 # output of build.sh

for region in us-east-1 us-east-2 us-west-1 us-west-2; do
    aws ecr --region $region get-login-password --region $region | docker login --username AWS --password-stdin 589690932525.dkr.ecr.$region.amazonaws.com
    docker tag $IMAGE 589690932525.dkr.ecr.$region.amazonaws.com/aws-for-fluent-bit:$VERSION
    docker push 589690932525.dkr.ecr.$region.amazonaws.com/aws-for-fluent-bit:$VERSION
done
