# aws-for-fluent-bit Clever fork

This folder contains the script to build using our fork.
The reason we are doing this is to pull this in https://github.com/aws/amazon-kinesis-streams-for-fluent-bit/pull/35
Once that is pulled into the official image, we can dismantle this fork.


## Creating the ECR repositories

An ECR repository has been created in every US region using the `create.sh` script.


## Building the image

The image we use has been built using the `build.sh` script.

## Pushing the image

Modify the variables in `push.sh` to match the version of the main aws-for-fluent-bit repo and the build tag output from the build.sh script.

The run it to push that image to our aws-for-fluent-bit ECR repo in all regions.
