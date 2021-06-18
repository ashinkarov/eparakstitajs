# /bin/env bash

# You may want to adjust these parameters
sudo docker run \
	--net=host \
	--env=DISPLAY \
	--volume=/home/tema/.Xauthority:/root/.Xauthority:rw \
	--volume=/home/tema/src/eparakstitajs3:/root/eparakstitajs3/ \
	$@ \
	-it eid-focal:latest
