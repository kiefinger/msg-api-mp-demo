#FROM open-liberty:webProfile7
#FROM open-liberty:19.0.0.12-full-java8-openj9
FROM openliberty/open-liberty:20.0.0.3-full-java11-openj9-ubi

MAINTAINER Josef Kiefinger
ENV DEPLOYMENT_DIR /config/
ENV WLP_INSTALL_DIR /liberty

COPY src/main/liberty/config/server.xml ${DEPLOYMENT_DIR}
COPY src/main/liberty/config/bootstrap.properties ${DEPLOYMENT_DIR}
COPY target/msg-api-mp-demo-1.0.war ${DEPLOYMENT_DIR}/apps/msg-api-mp-demo.war
COPY shared/ ${WLP_INSTALL_DIR}/usr/shared/

#RUN installUtility install --acceptLicense defaultServer
