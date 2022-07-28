#!/bin/bash
mkdir /var/lib/jenkins/practice
cd /var/lib/jenkins/practice
aws s3 cp s3://jenkins-test-5/java_build/hello.war .
scp hello.war ec2-user@11.0.0.107:/home/ec2-user/tomcat/apache-tomcat-9.0.64/webapps
ssh ec2-user@11.0.0.107 << HERE
    cd /home/ec2-user/tomcat/apache-tomcat-9.0.64/bin/
    ./shutdown.sh
    ./startup.sh
HERE