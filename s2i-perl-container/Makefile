all:	s2i-perl-container

s2i-perl-container:
	git clone https://github.com/sclorg/s2i-perl-container.git
	cd s2i-perl-container ; \
	git submodule update --init ; \
	patch -p 1 -i ../s2i-perl-container-s390x.patch ; \
	make

push:
	if [ -d s2i-perl-container ]; then \
		../pushit.sh perl ; \
	fi
	@rm -rf s2i-perl-container

tag:
	if [ -d s2i-perl-container ]; then \
		cd s2i-perl-container ; \
		make tag ; \
		cd .. ; \
		../retag.sh perl ; \
	fi

clean:
	if [ -d s2i-perl-container ]; then \
		cd s2i-perl-container ; \
		make clean ; \
	fi
	@rm -rf s2i-perl-container

test:
	if [ -d s2i-perl-container ]; then \
		cd s2i-perl-container ; \
		make test ; \
	fi
