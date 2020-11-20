FROM tmaxsoftofficial/jeus:8.1.105067-jdk8-openjdk
USER root

COPY ROOT.war /root/app/
#
RUN mkdir /root/logs
RUN chown -R 1000710000:root /root/*  && chmod -R 777 /root/*
#
USER 1000710000
#
EXPOSE 8080
