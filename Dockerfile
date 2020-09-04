FROM extvos/alpine
MAINTAINER  "Mingcai SHEN <archsh@gmail.com>"
ENV JDK_MAJOR 7

# Installing JDK7
RUN apk update && apk add --no-cache openjdk7-jre-base
