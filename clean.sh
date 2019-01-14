#!/bin/sh
IMAGES=`docker images | grep wildfly- | awk '{print $3}' | sort -u`
IMAGE=(${IMAGES}) 
for (( i=0; i<${#IMAGE[$i]}; i++ )) 
do
	docker rmi ${IMAGE[$i]}
done
