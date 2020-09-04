FROM extvos/alpine
MAINTAINER  "Mingcai SHEN <archsh@gmail.com>"
ENV JDK_MAJOR 11

# Installing JDK11
RUN apk update && apk add --no-cache openjdk11-jre