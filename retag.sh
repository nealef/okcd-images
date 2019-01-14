#!/bin/sh
if [ $# -ge 1 ]; then
	COMP=$1
	IMGS=`docker images | grep ^localhost | grep "${COMP}-" | awk '{print \$1":"\$2}' | awk -F / '{print \$3}'`
	IMG=(${IMGS})
	for (( i=0; i < ${#IMG[@]}; i++ )) 
	do
		NAME=`echo ${IMG[$i]} | awk -F : '{print \$1}'`
		TAG=`echo ${IMG[$i]} | awk -F : '{print \$2}'`
		docker tag localhost/clefos/${NAME}:${TAG} clefos/${NAME}:${TAG}
		docker tag localhost/clefos/${NAME}:${TAG} centos/${NAME}:${TAG}
	done
fi
exit 0
