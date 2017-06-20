#!/bin/bash


# download oracle java 1.8.*
cd /usr/lib/

wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2Ftechnetwork%2Fjava%2Fjavase%2Fdownloads%2Fjdk8-downloads-2133151.html; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm"

#installing java
sudo yum localinstall jdk-8u131-linux-x64.rpm

rm -rf jdk-8u131-linux-x64.rpm

#setting up JAVA_HOME path for all users

echo export JAVA_HOME=/usr/java/jdk1.8.0_131/jre >> /etc/environment
source /etc/environment
