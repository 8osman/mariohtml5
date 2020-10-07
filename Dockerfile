FROM tomcat:9

MAINTAINER github.com/8osman

#install dependencies
#RUN apt-get update && apt-get install python3.pip

RUN rm -rf /usr/local/tomcat/webapps/ROOT/*

ADD webapp/ /usr/local/tomcat/webapps/ROOT/

## Create non-root user 
RUN useradd -ms /bin/bash mario \
    && usermod -aG mario mario \
    && chown -R mario:mario /usr/local/tomcat

EXPOSE 8080
CMD ["catalina.sh", "run"]

USER mario

