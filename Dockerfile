FROM alpine:3.18 AS builder
WORKDIR /app

RUN apk update && apk add --no-cache build-base git cmake bash make linux-headers

COPY . .

RUN sed -i 's/sudo//g' buildme
RUN /bin/bash -c ./buildme