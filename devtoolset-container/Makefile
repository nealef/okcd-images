all:	devtoolset-container

devtoolset-container:
	git clone https://github.com/sclorg/devtoolset-container.git
	cd devtoolset-container ; \
	git submodule update --init ; \
	patch -p 1 -i ../devtoolset-container-s390x.patch ; \
	make

push:
	if [ -d devtoolset-container ]; then \
		cd devtoolset-container ; \
		make push ; \
	fi
	@rm -rf devtoolset-container

tag:
	if [ -d devtoolset-container ]; then \
		cd devtoolset-container ; \
		make tag ; \
		cd .. ; \
		../retag.sh devtoolset ; \
	fi

clean:
	if [ -d devtoolset-container ]; then \
		cd devtoolset-container ; \
		make clean ; \
	fi
	@rm -rf devtoolset-container

test:
	if [ -d devtoolset-container ]; then \
		cd devtoolset-container ; \
		make test ; \
	fi
