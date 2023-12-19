FROM centos:7
RUN yum install java -y 
RUN mkdir /ani
WORKDIR /ani
RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.97/bin/apache-tomcat-8.5.97.tar.gz
RUN tar -xzvf apache-tomcat-8.5.97.tar.gz -C /opt
COPY  ./mysql-connector.jar /opt/apache-tomcat-8.5.97/lib
COPY ./students.war /opt/apache-tomcat-8.5.97/webapps
EXPOSE 8080
CMD ["/opt/apache-tomcat-8.5.97/bin/startup.sh"]
