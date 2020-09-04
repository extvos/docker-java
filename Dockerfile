FROM extvos/alpine
MAINTAINER  "Mingcai SHEN <archsh@gmail.com>"
ENV JDK_MAJOR 10

# Installing JDK10
RUN apk update && apk add --no-cache openjdk10-jre