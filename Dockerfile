FROM alpine
RUN apk update && apk add wget openjdk8 && \
wget https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.54/bin/apache-tomcat-8.5.54.tar.gz && \
mkdir /opt/tomcat && \
tar -xC /opt/tomcat -f apache-tomcat-8.5.20.tar.gz
EXPOSE 8080

COPY helloworld-ws.war /opt/tomcat/webapps/

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
