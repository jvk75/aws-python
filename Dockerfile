FROM node:latest
MAINTAINER Jari Kalinainen <jari@loitsut.com>
LABEL Description="Node, Python 3.7 and AWS CLI+CDK with some common utilities and libraries. To be used as gitalab CI/CD base image."

# Install
RUN add-apt-repository ppa:deadsnakes/ppa \
    && apt-get update \
    && apt-get install -y \
        python3.7 python3-pip python3-setuptools \
        groff zip git jq \
        less \
    && pip3 install --upgrade pip \
    && pip3 install -U awscli boto3 requests aws-cdk.core \
    && npm install -g aws-cdk \
    && apt-get clean
