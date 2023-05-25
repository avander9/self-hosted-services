#!/bin/bash

echo "--Updating Portainer--"

echo "Let's stop and remove the outdated container"

sudo docker stop portainer && sudo docker rm portainer

echo "Ok, now it is time to pull the lastest Portainer image"

docker pull portainer/portainer-ce:latest

echo "It is almost done, let's run Portainer"

docker run -d -p 9000:9000 -p 8000:8000 --name portainer --restart always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest

echo "Perfect! now Portainer is up to date. Have a nice day"