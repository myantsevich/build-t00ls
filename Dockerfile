FROM alpine
LABEL AUTHOR=mfilipovich
RUN apk update && \
apk upgrade && \
apk add wget && \
apk add openjdk8 && \
apk add zip 

WORKDIR /opt
RUN wget http://ftp.byfly.by/pub/apache.org/tomcat/tomcat-8/v8.5.54/bin/apache-tomcat-8.5.54.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-8.5.54 /opt/tomcat
#RUN adduser -D -home /opt/tomcat tomcat
EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]