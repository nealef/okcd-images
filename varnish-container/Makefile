all:	varnish-container

varnish-container:
	git clone https://github.com/sclorg/varnish-container.git
	cd varnish-container ; \
	git submodule update --init ; \
	patch -p 1 -i ../varnish-container-s390x.patch ; \
	make

push:	
	if [ -d varnish-container ]; then \
		../pushit.sh varnish ; \
	fi
	@rm -rf varnish-container

tag:	
	if [ -d varnish-container ]; then \
		cd varnish-container ; \
		make tag ; \
		../../retag.sh varnish ; \
	fi

clean:
	if [ -d varnish-container ]; then \
		cd varnish-container ; \
		make clean ; \
	fi
	@rm -rf varnish-container

test:	
	if [ -d varnish-container ]; then \
		cd varnish-container ; \
		make test ; \
	fi
