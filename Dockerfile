FROM openjdk:8-jdk-alpine

MAINTAINER ladosow <ladosow@gmail.com>
LABEL version=1.0 \
      licence=GPLv3

ENV APP_ROOT /websocket-demo
ARG JAR_FILE=target/*.jar
VOLUME /tmp

RUN apk --no-cache add curl
RUN mkdir ${APP_ROOT}

WORKDIR ${APP_ROOT}
COPY ${JAR_FILE} ${APP_ROOT}/websocket-demo.jar


ENTRYPOINT ["java"]

CMD ["-jar","websocket-demo.jar"]