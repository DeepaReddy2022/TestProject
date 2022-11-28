# syntax = docker/dockerfile:1.3
FROM python:3.9-slim-bullseye
COPY build-script.sh .
RUN chmod 777 ./build-script.sh
RUN --mount=type=secret,id=mysecret ./build-script.sh
