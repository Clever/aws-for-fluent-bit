#!/usr/bin/env bash

set -e

# script to build and push an image of our own to ECR in every region
# requires an aws-for-fluent-bit repo in ECR in us-*-* regions
export KINESIS_PLUGIN_CLONE_URL=https://github.com/Clever/amazon-kinesis-streams-for-fluent-bit.git
export KINESIS_PLUGIN_BRANCH=with-extensions
make -C ../ kinesis-dev
