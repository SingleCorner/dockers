FROM python:alpine

RUN apk update && \
    apk add gcc libc-dev libffi-dev openssl-dev make && \
    pip install pip ansible openshift docker --upgrade

WORKDIR /ansible