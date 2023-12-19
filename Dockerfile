FROM centos:7
RUN yum install java -y
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat

ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.97/bin/apache-tomcat-8.5.97.tar.gz .
RUN tar -xzf apache-tomcat-8.5.97.tar.gz
RUN mv apache-tomcat-8.5.97/* /opt/tomcat/
RUN rm -rf apache-tomcat-8.5.97*
COPY ./mysql-connector.jar /opt/tomcat/lib
COPY ./student.war /opt/tomcat/webapps
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]

