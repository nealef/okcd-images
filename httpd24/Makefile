all:	httpd-container

httpd-container:
	git clone https://github.com/sclorg/httpd-container.git
	cd httpd-container ; \
	git submodule update --init ; \
	patch -p 1 -i ../httpd-container-s390x.patch ; \
	make

push:	
	if [ -d httpd-container ]; then \
		../pushit.sh httpd ; \
	fi
	@rm -rf httpd-container

tag:	
	if [ -d httpd-container ]; then \
		cd httpd-container ; \
		make tag ; \
		../../retag.sh httpd ; \
	fi

clean:
	if [ -d httpd-container ]; then \
		cd httpd-container ; \
		make clean ; \
	fi
	@rm -rf httpd-container

test:	
	if [ -d httpd-container ]; then \
		cd httpd-container ; \
		make test ; \
	fi
