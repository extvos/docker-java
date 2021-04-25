FROM extvos/alpine
MAINTAINER  "Mingcai SHEN <archsh@gmail.com>"
ENV JDK_MAJOR 8

# Installing JDK8
RUN apk update && apk add --no-cache openjdk8 openjdk8-jre