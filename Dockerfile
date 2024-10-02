# Web Server
FROM tomcat:9.0.95 

# App Name & Apps Dir Variables
ENV WAR_FILE=./target/java-hello-world.war
ENV APPS_DIR=/usr/local/tomcat/webapps/

COPY ${WAR_FILE} ${APPS_DIR}

EXPOSE 8080

# Start Tomcat Server
CMD ["catalina.sh" , "run"]