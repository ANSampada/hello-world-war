#!/bin/bash
sudo apt install tomcat9 tomcat9-admin -y
#set the port number to 9090
sudo ufw allow from any to any port 9090 proto tcp
sudo sed -i 's/connector port="8080"/connector port="9090"/Ig' /etc/tomcat9/server.xml
#configure the user for tomcat9
sudo sed -i '56 i <role rolename="admin-gui"/>' /etc/tomcat9/tomcat-users.xml
sudo sed -i '57 i <role rolename="manager-gui"/>' /etc/tomcat9/tomcat-users.xml
sudo sed -i '58 i <user username="tomcat" password="pass" roles="admin-gui,manager-gui"/>
restart tomcat9
sudo systemctl restat tomcat9
sudo systemctl status tomcat9
#allow jenkins user without password
sudo sed -i '45 i jenkins ALL=(ALL) NOPASSWD:ALL' /etc/sudoers
sudo sed -i '46 i jenkins ALL=(ALL) NOPASSWD: /var/lib/jenkins/workspace' /etc/sudoers
