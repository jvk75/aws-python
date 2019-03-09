FROM python:latest
MAINTAINER Jari Kalinainen <jari@klubitii.com>
LABEL Description="Python 3.7 and AWS CLI with some common utilities and libraries. Made for gitalba CI/CD base image."

# Install AWS CLI (and some)
RUN pip3 install awscli --upgrade \
&& apt-get update \
&& apt-get install -y zip git

#Install common libraries
RUN pip3 install -U boto3 requests
