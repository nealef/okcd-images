all:	s2i-php-container

s2i-php-container:
	git clone https://github.com/sclorg/s2i-php-container.git
	cd s2i-php-container ; \
	git submodule update --init ; \
	patch -p 1 -i ../s2i-php-container-s390x.patch ; \
	make

push:
	if [ -d s2i-php-container ]; then \
		../pushit.sh php ; \
	fi
	@rm -rf s2i-php-container

tag:
	if [ -d s2i-php-container ]; then \
		cd s2i-php-container ; \
		make tag ; \
		cd .. ; \
		../retag.sh php ; \
	fi

clean:
	if [ -d s2i-php-container ]; then \
		cd s2i-php-container ; \
		make clean ; \
	fi
	@rm -rf s2i-php-container

test:
	if [ -d s2i-php-container ]; then \
		cd s2i-php-container ; \
		make test ; \
	fi
