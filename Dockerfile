# Base Image - Node Platform
FROM node:12.13.0-alpine

LABEL maintainer="ccfiel@bai.ph" version="2.0.2"

# Install Firebase CLI
RUN npm install -g firebase-tools

