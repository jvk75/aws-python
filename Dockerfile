FROM node:alpine3.10
MAINTAINER Jari Kalinainen <jari@loitsut.com>
LABEL Description="Node, Python 3.7 and AWS CLI+CDK with some common utilities and libraries. To be used as gitalab CI/CD base image."

# Install
RUN npm install -g aws-cdk \
    && npm install -g node-gyp \
    && apk add python3 python groff zip git jq make g++ \
    && pip3 install --no-cache-dir --upgrade pip \
    && pip3 install --no-cache-dir --upgrade awscli boto3 requests aws-cdk.core 
