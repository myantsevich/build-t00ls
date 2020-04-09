#FROM alpine
#RUN apk update && apk add wget tar openjdk8 && wget https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz && tar -xvf apache-tomcat-8.5.20.tar.gz && mkdir /opt/tomcat && mv apache-tomcat*/* /opt/tomcat/
#COPY helloworld-project/helloworld-ws/target/helloworld-ws.war /opt/tomcat/webapps/health.war
#EXPOSE 8080                 
#CMD ["/opt/tomcat/bin/catalina.sh", "run"]
FROM jboss/wildfly
ADD  helloworld-project/helloworld-ws/target/helloworld-ws.war /opt/jboss/wildfly/standalone/deployments/
