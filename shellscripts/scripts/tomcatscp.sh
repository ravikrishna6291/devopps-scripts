#!bin/bash
#creating the file with ip add
#file name is ipfile
for ip in `cat ipfile`:
do
echo $ip
scp target/war root@$ip:/opt/tomcat/webapps
done 