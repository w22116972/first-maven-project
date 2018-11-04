FROM tomcat:latest

ADD ./webapp/tartget/*.war /usr/local/tomcat/webapps/

EXPOSE 8080  # port in container

CMD ["catalina.sh", "run"]