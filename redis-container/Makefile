all:	redis-container

redis-container:
	git clone https://github.com/sclorg/redis-container.git
	cd redis-container ; \
	git submodule update --init ; \
	patch -p 1 -i ../redis-container-s390x.patch ; \
	make

push:	
	if [ -d redis-container ]; then \
		../pushit.sh redis ; \
	fi
	@rm -rf redis-container

tag:	
	if [ -d redis-container ]; then \
		cd redis-container ; \
		make tag ; \
		../../retag.sh redis ; \
	fi

clean:
	if [ -d redis-container ]; then \
		cd redis-container ; \
		make clean ; \
	fi
	@rm -rf redis-container

test:	
	if [ -d redis-container ]; then \
		cd redis-container ; \
		make test ; \
	fi
