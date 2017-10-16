#!/bin/sh

$TOMCAT_HOME/bin/shutdown.sh
rm -rf $TOMCAT_HOME/webapps/spring_jsonview-1.0.0
mvn clean install
cp -f target/spring_jsonview-1.0.0.war $TOMCAT_HOME/webapps/
$TOMCAT_HOME/bin/startup.sh


