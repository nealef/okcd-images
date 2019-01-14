all:	nginx-container

nginx-container:
	git clone https://github.com/sclorg/nginx-container.git
	cd nginx-container ; \
	git submodule update --init ; \
	patch -p 1 -i ../nginx-container-s390x.patch ; \
	make

push:
	if [ -d nginx-container ]; then \
		cd nginx-container ; \
		make push ; \
	fi
	@rm -rf nginx-container

tag:
	if [ -d nginx-container ]; then \
		cd nginx-container ; \
		make tag ; \
		cd .. ; \
		../retag.sh nginx ; \
	fi

clean:
	if [ -d nginx-container ]; then \
		cd nginx-container ; \
		make clean ; \
	fi
	@rm -rf nginx-container

test:
	if [ -d nginx-container ]; then \
		cd nginx-container ; \
		make test ; \
	fi
