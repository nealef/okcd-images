all:	mariadb-container

mariadb-container:
	git clone https://github.com/sclorg/mariadb-container.git
	cd mariadb-container ; \
	git submodule update --init ; \
	patch -p 1 -i ../mariadb-container-s390x.patch ; \
	make

push:
	if [ -d mariadb-container ]; then \
		cd mariadb-container ; \
		make push ; \
	fi
	@rm -rf mariadb-container

tag:
	if [ -d mariadb-container ]; then \
		cd mariadb-container ; \
		make tag ; \
		cd .. ; \
		../retag.sh mariadb ; \
	fi

clean:
	if [ -d mariadb-container ]; then \
		cd mariadb-container ; \
		make clean ; \
	fi
	@rm -rf mariadb-container

test:
	if [ -d mariadb-container ]; then \
		cd mariadb-container ; \
		make test ; \
	fi
