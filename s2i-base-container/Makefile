all:	s2i-base-container

s2i-base-container:
	git clone https://github.com/sclorg/s2i-base-container.git
	cd s2i-base-container ; \
	git submodule update --init ; \
	patch -p 1 -i ../s2i-base-container-s390x.patch ; \
	make
	touch .s2i-base-container

push:
	if [ -d s2i-base-container ] ; then \
		../pushit.sh s2i-base ; \
		../pushit.sh s2i-core ; \
	fi
	@rm -rf s2i-base-container

tag:	
	if [ -d s2i-base-container ] ; then \
		cd s2i-base-container ; \
		make tag ; \
		../retag s2i-core core ; \
		../retag s2i-base base ; \
		docker tag clefos/s2i-core-centos7:latest openshift/core-centos7:latest ; \
		docker tag clefos/s2i-base-centos7:latest openshift/base-centos7:latest ; \
	fi

clean:
	if [ -d s2i-base-container ]; then \
		cd s2i-base-container ; \
		make clean ; \
	fi
	@rm -rf s2i-base-container

test:	
	if [ -d s2i-base-container ] ; then \
		cd s2i-base-container ; \
		make test ; \
	fi
