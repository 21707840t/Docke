FROM tomcat:9.0

COPY /weppapp/target/webapp.war /usr/local/tomcat/wepapps
