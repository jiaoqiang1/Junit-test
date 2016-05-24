#!/bin/sh
echo 'System Update'
sudo apt-get update 
echo 'update completed'
sudo apt-get install axel
echo 'Update completed'
sudo wget http://download.oracle.com/otn-pub/java/jdk/7u76-b13/jdk-7u76-linux-x64.tar.gz
echo 'download completed'
sudo mkdir /usr/local/java
sudo cp jdk-7u76-linux-64.tar.gz/usr/local/java
cd /usr/local/java
sudo tar zxvf jdk-7u76-linux-x64.tar.gz
echo 'decompression completed'
sudo rm jdk-8u91-linux-x64.tar.gz
sudo vim + ~/.bashrc;
export JAVA_HOME=/usr/local/java/jdk1.7.0_76;
export JRE_HOME=${JAVA_HOME}/jre ;
export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib ;
export PATH=${JAVA_HOME}/bin:$PATH
sudo update-alternative --config java
echo'/usr/lib/.../java无需配置。'
sudo java -version
echo 'java version "1.8.0._91"'



