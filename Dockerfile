FROM tomcat:8
# Take the war and copy to webapps of tomcat
COPY target/*.war /usr/local/tomcat/webapps/myweb.war
FROM tomcat:8.0.20-jre8
RUN sed -i '/<\/tomcat-users>/ i\<user username="admin" password="agunu" roles="admin-gui,manager-gui"/>' /usr/local/tomcat/conf/tomcat-users.xml
#COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY target/*.war /usr/local/tomcat/webapps/myweb.war
COPY target/java-web-app*.war /usr/local/tomcat/webapps/java-web-app.war
