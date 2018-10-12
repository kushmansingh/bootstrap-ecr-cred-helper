# Bootstrap ECR Credentials Helper

This is a hacky way to get around setting up ECR in Drone.io.

## Instructions
Mount in your home directory (yeah, I know) and provide the name of your registry.
```
docker run --rm -e REGISTRY="test.dkr.ecr.us-east-1.amazonaws.com" -v ~/:/home kushmansingh/bootstrap-ecr-cred-helper
```
