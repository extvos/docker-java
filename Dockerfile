FROM extvos/alpine
MAINTAINER  "Mingcai SHEN <archsh@gmail.com>"
ENV JDK_MAJOR 9

# Installing JDK9
RUN apk update && apk add --no-cache openjdk9-jre