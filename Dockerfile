FROM image-registry.openshift-image-registry.svc:5000/openshift/jeus:8.1.105067-jdk8-openjdk
USER root

COPY ROOT.war /root/app/
COPY domain.xml /root/jeus8/domains/domain1/config/domain.xml
COPY check_process.sh /root/jeus8/bin/check_process.sh

#
#RUN mkdir /root/logs
RUN rm -rf /root/jeus8/domains/domain1/servers/*
RUN chown -R 1000590000:root /root/*  && chmod -R 777 /root/*
#
USER 1000590000
#
EXPOSE 8080
