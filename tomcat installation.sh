#!/bib/bash
#Download the java
cd /tmp
#Java installation with RPM
wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm
#install
rpm -ivh jdk-8u131-linux-x64.rpm
#delete the rpm after java installation
rm -f jdk-8u131-linux-x64.rpm
#install the tomcat
cd /opt
#download the tomcat zip
#wget https://mirrors.estointernet.in/apache/tomcat/tomcat-10/v10.0.8/bin/apache-tomcat-10.0.8-windows-x64.zip
wget https://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.50/bin/apache-tomcat-9.0.50-windows-x64.zip
#install unzip
yum install unzip -y
#unzip/extract
unzip apache-tomcat-9.0.50-windows-x64.zip
#unzip apache-tomcat-10.0.8-windows-x64.zip
#delete the zip
rm -f apache-tomcat-9.0.50-windows-x64.zip
#rm -f apache-tomcat-10.0.8-windows-x64.zip
#rename
mv apache-tomcat-9.0.50 tomcat
#mv apache-tomcat-10.0.8 tomcat
#change the permissions
chmod -R 700 tomcat/
#other option
#/opt/tomcat/bin/startup.sh
cd tomcat/bin/
./startup.sh
