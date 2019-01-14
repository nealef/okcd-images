all:	source-to-image

source-to-image:
	go get github.com/golang/lint/golint
	docker pull clefos/origin-base:latest 
	docker tag docker.io/clefos/origin-base:latest openshift/origin-base:latest
	docker pull clefos/busybox:glibc
	docker tag docker.io/clefos/busybox:glibc busybox:latest
	git clone https://github.com/openshift/source-to-image.git
	cd source-to-image ; \
	git submodule update --init ; \
	patch -p 1 -i ../source-to-image-s390x.patch ; \
	git commit -a -m "Add s390x support" ; \
	make ; \
	make release

push:
	if [ -d source-to-image ] ; then \
		../pushit.sh s2i-base ; \
		../pushit.sh s2i-core ; \
	fi
	@rm -rf source-to-image

tag:	
	if [ -d source-to-image ] ; then \
		cd source-to-image ; \
		make tag ; \
		../retag s2i-core ; \
		../retag s2i-base ; \
	fi

clean:
	if [ -d source-to-image ]; then \
		cd source-to-image ; \
		make clean ; \
	fi
	@rm -rf source-to-image

check:
	if [ -d source-to-image ] ; then \
		cd source-to-image ; \
		export PATH=${PATH}:${HOME}/go/bin ; \
		make check ; \
	fi

test:	
	if [ -d source-to-image ] ; then \
		export PATH=${PATH}:${HOME}/go/bin ; \
		cd source-to-image ; \
		make test ; \
	fi
