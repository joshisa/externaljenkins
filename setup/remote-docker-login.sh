#!/bin/sh
sudo echo "$1 mycluster.icp" >> /etc/hosts
openssl s_client -showcerts -connect mycluster.icp:8500 </dev/null 2>/dev/null|openssl x509 -outform PEM >mycluster.icp.docker.crt
sudo mkdir -p /etc/docker/certs.d/mycluster.icp:8500
sudo cp mycluster.icp.docker.crt /etc/docker/certs.d/mycluster.icp:8500
sudo service docker restart
docker login -u admin https://mycluster.icp:8500