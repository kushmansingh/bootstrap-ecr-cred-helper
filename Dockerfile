FROM golang:1.10

COPY entrypoint /go/bin/
COPY amazon-ecr-credential-helper /go/src/github.com/awslabs/amazon-ecr-credential-helper
WORKDIR /go/src/github.com/awslabs/amazon-ecr-credential-helper/
RUN apt-get update && apt-get install -y jq
RUN make

ENTRYPOINT ["entrypoint"]
