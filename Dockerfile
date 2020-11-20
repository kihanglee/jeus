FROM tmaxsoftofficial/jeus:8.1.105067-jdk8-openjdk
USER root

#COPY domain.xml /usr/local/jeus/domains/
#
#RUN mkdir /root/logs
#RUN chown -R 1000590000:root /root/*  && chmod -R 777 /root/*
#
##USER 1000590000
#
EXPOSE 8080
