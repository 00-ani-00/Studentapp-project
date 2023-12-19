FROM centos:7
RUN yum install java -y 
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.97/bin/apache-tomcat-8.5.97.tar.gz .
RUN tar -xzvf apache-tomcat-8.5.97.tar.gz 
RUN mv apache-tomcat-8.5.97/* /opt/tomcat/
COPY  ./mysql-connector.jar /opt/tomcat/lib
COPY ./students.war /opt/tomcat/webapps
EXPOSE 8080
CMD ["/opt/tomcat/bin/startup.sh"]
