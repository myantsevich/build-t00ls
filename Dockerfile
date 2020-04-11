FROM davidcaste/alpine-tomcat:tomcat8
MAINTAINER "Dmitriy Shishkovets"
COPY helloworld-ws.war /opt/tomcat/webapps/helloworld-ws.war
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
