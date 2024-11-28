# For Java application in springboot tomcat will be automatically installed.
# But without springboot app tomcat has to be installed as a base image.
# java will installed using tomcat only no need to download java.

FROM tomcat:latest

# Who is the Author (depricated) instead of LABEL

#MAINTAINER "ASHISH"

LABEL Author="ASHISH"

# To expose conatainer port (# Expose the port the app runs on)

EXPOSE 8080

# Copy is used copy the jar file from HOST Machine to Conatiner machine  
# After building project with maven in target folder jar file will be created
# usr/app is container repo were jar file will be copied 

# /usr/local/tomcat/webapps/ is tomcat path were application will be deployed
# target/maven-web-app.war  is folder were maven will build and package our app.

COPY target/maven-web-app.war /usr/local/tomcat/webapps/