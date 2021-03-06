FROM ubuntu:latest

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install openjdk-8-jdk wget
RUN mkdir /usr/local/tomcat
RUN wget http://apache.tt.co.kr/tomcat/tomcat-8/v8.5.63/bin/apache-tomcat-8.5.61.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /tmp && tar xvfz tomcat.tar.gz
RUN cp -Rv /tmp/apache-tomcat-8.5.63/* /usr/local/tomcat/
RUN rm -rf /tmp/* && rm -rf /usr/local/tomcat/webapps/*

EXPOSE 8080

CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
