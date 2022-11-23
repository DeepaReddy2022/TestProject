# syntax = docker/dockerfile:1.3
FROM python:3.9-slim-bullseye
COPY build-script.sh .
RUN --mount=type=secret,id=SECRET_FILE_ID /build-script.sh