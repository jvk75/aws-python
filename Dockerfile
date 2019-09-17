FROM node:latest
RUN npm install -g aws-cdk

FROM python:latest
MAINTAINER Jari Kalinainen <jari@klubitii.com>
LABEL Description="Python 3.7 and AWS CLI+CDK with some common utilities and libraries. To be used as gitalab CI/CD base image."

# Install AWS CLI (and some)
RUN pip3 install awscli --upgrade \
&& apt-get update \
&& apt-get install -y zip git

#Install common libraries
RUN pip3 install -U boto3 requests \
&& pip install -U aws-cdk.core
