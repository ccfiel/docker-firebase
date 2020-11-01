# Base Image - Node Platform
FROM node:10.23-alpine

LABEL maintainer="ccfiel@bai.ph" version="2.0.2"

# Install Firebase CLI
RUN npm install -g firebase-tools
RUN apk update
RUN apk add wget tar unzip lib32stdc++6 lib32z1 bash python python-pip ruby-full ruby-dev
RUN gem install fastlane -NV
RUN gem install google-api-client
RUN bundle update fastlane
RUN bundle install
