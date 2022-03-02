FROM java:8
MAINTAINER  "Mingcai SHEN <archsh@gmail.com>"
ENV JAVA 8

RUN cd /tmp \
    && wget https://www.johnvansickle.com/ffmpeg/old-releases/ffmpeg-4.4-amd64-static.tar.xz \
    && tar Jxf ffmpeg-4.4-amd64-static.tar.xz \
    && cp ffmpeg-4.4-amd64-static/ff* /usr/bin \
    && rm -rf ffmpeg*