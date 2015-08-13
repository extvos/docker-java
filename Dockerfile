FROM extvos/centos

MAINTAINER  "Mingcai SHEN <archsh@gmail.com>"

ENV JDK_MAJOR 6
ENV JDK_UPDATE 45
ENV JDK_BUILD 06

ENV JAVA_HOME /opt/jdk
ENV PATH $JAVA_HOME/bin:$PATH

# Installing JDK6
RUN cd /opt/ \
	&& wget --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie;" http://download.oracle.com/otn-pub/java/jdk/${JDK_MAJOR}u${JDK_UPDATE}-b${JDK_BUILD}/jdk-${JDK_MAJOR}u${JDK_UPDATE}-linux-x64.bin \
	&& chmod +x jdk-${JDK_MAJOR}u${JDK_UPDATE}-linux-x64.bin \
	&& ./jdk-${JDK_MAJOR}u${JDK_UPDATE}-linux-x64.bin \
	&& ln -s /opt/jdk1.${JDK_MAJOR}.0_${JDK_UPDATE} /opt/jdk \
	&& rm -f jdk-${JDK_MAJOR}u${JDK_UPDATE}-linux-x64.bin