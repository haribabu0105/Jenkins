#!/bin/bash
mkdir /var/lib/jenkins/artifacts4
cd /var/lib/jenkins/artifacts4
aws s3 cp s3://jenkinsbucket12345/java3/sparkjava-hello-world-1.0.war .
scp sparkjava-hello-world-1.0.war ec2-user@20.0.1.238:/home/ec2-user/tomcat/apache-tomcat-9.0.65/webapps
ssh ec2-user@20.0.1.238 << HERE
    cd /home/ec2-user/tomcat/apache-tomcat-9.0.65/bin/
    ./shutdown.sh
    ./startup.sh
HERE