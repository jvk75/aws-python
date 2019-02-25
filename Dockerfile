FROM python:latest

# Install AWS CLI
RUN pip3 install awscli --upgrade \
&& apt-get update \
&& apt-get install -y zip git
