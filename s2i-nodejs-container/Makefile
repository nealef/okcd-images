all:	s2i-nodejs-container

s2i-nodejs-container:
	git clone https://github.com/sclorg/s2i-nodejs-container.git
	cd s2i-nodejs-container ; \
	git submodule update --init ; \
	patch -p 1 -i ../s2i-nodejs-container-s390x.patch ; \
	make

push:
	if [ -d s2i-nodejs-container ]; then \
		../pushit.sh nodejs ; \
	fi
	@rm -rf s2i-nodejs-container

tag:
	if [ -d s2i-nodejs-container ]; then \
		cd s2i-nodejs-container ; \
		make tag ; \
		cd .. ; \
		../retag.sh nodejs ; \
	fi

clean:
	if [ -d s2i-nodejs-container ]; then \
		cd s2i-nodejs-container ; \
		make clean ; \
	fi
	@rm -rf s2i-nodejs-container

test:
	if [ -d s2i-nodejs-container ]; then \
		cd s2i-nodejs-container ; \
		make test ; \
	fi
