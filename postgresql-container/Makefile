all:	postgresql-container

postgresql-container:
	git clone https://github.com/sclorg/postgresql-container.git
	cd postgresql-container ; \
	git submodule update --init ; \
	patch -p 1 -i ../postgresql-container-s390x.patch ; \
	make

push:
	if [ -d postgresql-container ]; then \
		../pushit.sh postgresql ; \
	fi
	@rm -rf postgresql-container

tag:
	if [ -d postgresql-container ]; then \
		cd postgresql-container ; \
		make tag ; \
		cd .. ; \
		../retag.sh postgresql ; \
	fi

clean:
	if [ -d postgresql-container ]; then \
		cd postgresql-container ; \
		make clean ; \
	fi
	@rm -rf postgresql-container

test:
	if [ -d postgresql-container ]; then \
		cd postgresql-container ; \
		make test ; \
	fi
