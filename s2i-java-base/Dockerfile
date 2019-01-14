# This image provides a base for building and running WildFly applications.
# It builds using maven and runs the resulting artifacts on WildFly 8.1.

FROM clefos/s2i-base-centos7

MAINTAINER Neale Fergjuson <neale@sinenomine.net>

ENV JAVA_URL=https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/8.0.5.25/linux/s390x/ibm-java-s390x-sdk-8.0-5.25.bin

RUN wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL \
    && echo "INSTALLER_UI=silent" > /tmp/response.properties \
    && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties \
    && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties \
    && mkdir -p /opt/ibm \
    && chmod +x /tmp/ibm-java.bin \
    && /tmp/ibm-java.bin -i silent -f /tmp/response.properties \
    && rm -f /tmp/response.properties \
    && rm -f /tmp/index.yml \
    && rm -f /tmp/ibm-java.bin

ENV JAVA_HOME=/opt/ibm/java/jre \
    PATH=/opt/ibm/java/bin:$PATH

CMD bash
