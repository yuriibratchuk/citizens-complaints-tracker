### Dockerfile for Production

# Base Image: official tomcat 8 image, with jre 8 underneath
FROM tomcat:8-jre8

# Add tomcat users file for manager app
ADD container-files/tomcat-users.xml /usr/local/tomcat/conf/

# Add generated app war files to the webapps directory
ADD war/app.war /usr/local/tomcat/webapps/
ADD war/app-core.war /usr/local/tomcat/webapps/

# Add context config file for the application
ADD container-files/context.xml /usr/local/tomcat/conf/

# copy logback.xml config in the container
ADD container-files/logback.xml /opt/cct_home/

# Script for creating/checking/updating database in production
# More info: https://doc.cuba-platform.com/manual-6.3/db_update_in_prod_cmdline.html
# Usage: ./dbupdate.sh {username} {password} {create/check/update}
# Example: ./dbupdate.sh postgres postgres create
ADD container-files/dbupdate.sh /usr/local/tomcat/bin/

RUN chmod +x /usr/local/tomcat/bin/dbupdate.sh

# set CATALINA_OPTS env variable to point to logback config file and app home directory
ENV CATALINA_OPTS="-Dlogback.configurationFile=/opt/cct_home/logback.xml -Dapp.home=/opt/cct_home"

# Add postgres jdbc driver lib
ADD https://jdbc.postgresql.org/download/postgresql-9.3-1101.jdbc41.jar /usr/local/tomcat/lib/postgresql.jar