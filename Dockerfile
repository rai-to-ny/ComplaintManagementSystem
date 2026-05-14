FROM tomcat:10.1

COPY dist/ComplaintManagementSystem.war /usr/local/tomcat/webapps/

EXPOSE 8080