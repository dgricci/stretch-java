# Java 8 environment
FROM dgricci/stretch:1.0.0
MAINTAINER Didier Richard <didier.richard@ign.fr>
LABEL       version="1.0.0" \
            java="v8u181" \
            os="Debian Stretch" \
            description="Java 8 SDK (JDK and JRE)"

ENV JAVA_VERSION 8u181
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

COPY build.sh /tmp/build.sh

RUN /tmp/build.sh && rm -f /tmp/build.sh

# print java version
CMD ["java", "-version"]

