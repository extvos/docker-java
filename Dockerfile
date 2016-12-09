FROM extvos/alpine
MAINTAINER  "Mingcai SHEN <archsh@gmail.com>"
ENV JDK_MAJOR 7
ENV JDK_UPDATE 65
ENV JDK_BUILD 17

ENV JAVA_HOME /opt/jdk
ENV PATH $JAVA_HOME/bin:$PATH

# Installing JDK7
RUN apk update && apk add wget  \
    && mkdir /opt && cd /opt/ \
	&& wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie;" http://download.oracle.com/otn-pub/java/jdk/${JDK_MAJOR}u${JDK_UPDATE}-b${JDK_BUILD}/jdk-${JDK_MAJOR}u${JDK_UPDATE}-linux-x64.tar.gz \
	&& tar zxf jdk-${JDK_MAJOR}u${JDK_UPDATE}-linux-x64.tar.gz \
	&& ln -s /opt/jdk1.${JDK_MAJOR}.0_${JDK_UPDATE} /opt/jdk \
	&& rm -f jdk-${JDK_MAJOR}u${JDK_UPDATE}-linux-x64.tar.gz