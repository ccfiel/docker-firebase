# Base Image - Node Platform
FROM node:10.23-alpine

LABEL maintainer="ccfiel@bai.ph" version="2.0.2"

# Install Firebase CLI
RUN npm install -g firebase-tools
RUN apk update
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools
RUN apk --no-cache add ruby ruby-dev 
RUN apk add wget tar unzip bash 
RUN gem install fastlane -NV
RUN gem install google-api-client
RUN bundle update fastlane
RUN bundle install
