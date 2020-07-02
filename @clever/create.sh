#!/usr/bin/env bash

set -e

# create an aws-for-fluent-bit repo in every region

for region in us-east-1 us-east-2 us-west-1 us-west-2; do
    aws --region $region ecr create-repository \
        --repository-name aws-for-fluent-bit \
        --image-tag-mutability IMMUTABLE \
        --tags Key=team,Value=eng-infra
done
