FROM node:16-alpine3.14
MAINTAINER Jari Kalinainen <jari@loitsut.com>
LABEL Description="Node 16, Python 3.9 and AWS CLI+CDK with some common utilities and libraries. To be used as gitalab CI/CD base image."

# Install
RUN apk add --no-cache npm zsh python3-dev py3-pip groff zip git jq make g++ gcc libressl-dev musl-dev libffi-dev jpeg-dev zlib-dev \
    && pip3 install --no-cache-dir --upgrade pip \
    && pip3 install --no-cache-dir --upgrade awscli boto3 requests aws-cdk.core \
    && pip3 install --no-cache-dir --upgrade aws-cdk.core aws-cdk.aws-s3 aws-cdk.aws-lambda \
    && npm install -g aws-cdk \
    && npm install -g node-gyp 
