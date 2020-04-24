FROM extvos/alpine
MAINTAINER  "Mingcai SHEN <archsh@gmail.com>"
ENV JDK_MAJOR 8
ENV JDK_UPDATE 201
ENV JDK_BUILD 09

ENV JAVA_HOME /opt/jdk
ENV PATH $JAVA_HOME/bin:$PATH

# Installing JDK8
RUN apk update && apk add wget  curl \
    && curl -Ls https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.21-r2/glibc-2.21-r2.apk > /tmp/glibc-2.21-r2.apk \
    && apk add --allow-untrusted /tmp/glibc-2.21-r2.apk \
    && mkdir -p /opt/jdk && cd /opt/ \
	&& wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie;" http://download.oracle.com/otn-pub/java/jdk/${JDK_MAJOR}u${JDK_UPDATE}-b${JDK_BUILD}/jdk-${JDK_MAJOR}u${JDK_UPDATE}-linux-x64.tar.gz \
	&& tar zxf jdk-${JDK_MAJOR}u${JDK_UPDATE}-linux-x64.tar.gz \
	&& mv /opt/jdk1.${JDK_MAJOR}.0_${JDK_UPDATE}/* /opt/jdk \
	&& rm -rf /opt/jdk1.${JDK_MAJOR}.0_${JDK_UPDATE} jdk-${JDK_MAJOR}u${JDK_UPDATE}-linux-x64.tar.gz