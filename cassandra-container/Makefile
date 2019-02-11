all:	cassandra-container

cassandra-container:
	git clone https://github.com/sclorg/cassandra-container.git
	cd cassandra-container ; \
	git submodule update --init ; \
	patch -p 1 -i ../cassandra-container-s390x.patch ; \
	make

push:
	if [ -d cassandra-container ]; then \
		../pushit.sh cassandra ; \
	fi
	@rm -rf cassandra-container

tag:
	if [ -d cassandra-container ]; then \
		cd cassandra-container ; \
		make tag ; \
		cd .. ; \
		../retag.sh cassandra ; \
	fi

clean:
	if [ -d cassandra-container ]; then \
		cd cassandra-container ; \
		make clean ; \
	fi
	@rm -rf cassandra-container

test:
	if [ -d cassandra-container ]; then \
		cd cassandra-container ; \
		make test ; \
	fi
