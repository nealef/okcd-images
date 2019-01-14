all:	mongodb-container

mongodb-container:
	git clone https://github.com/sclorg/mongodb-container.git
	cd mongodb-container ; \
	git submodule update --init ; \
	patch -p 1 -i ../mongodb-container-s390x.patch ; \
	make

push:
	if [ -d mongodb-container ]; then \
		../pushit.sh mongodb ; \
	fi
	@rm -rf mongodb-container

tag:
	if [ -d mongodb-container ]; then \
		cd mongodb-container ; \
		make tag ; \
		cd .. ; \
		../retag.sh mongodb ; \
	fi

clean:
	if [ -d mongodb-container ]; then \
		cd mongodb-container ; \
		make clean ; \
	fi
	@rm -rf mongodb-container

test:
	if [ -d mongodb-container ]; then \
		cd mongodb-container ; \
		make test ; \
	fi
