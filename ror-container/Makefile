all:	ror-container

ror-container:
	git clone https://github.com/sclorg/ror-container.git
	cd ror-container ; \
	git submodule update --init ; \
	patch -p 1 -i ../ror-container-s390x.patch ; \
	make

push:	
	if [ -d ror-container ]; then \
		../pushit.sh ror ; \
	fi
	@rm -rf ror-container

tag:	
	if [ -d ror-container ]; then \
		cd ror-container ; \
		make tag ; \
		../../retag.sh ror ; \
	fi

clean:
	if [ -d ror-container ]; then \
		cd ror-container ; \
		make clean ; \
	fi
	@rm -rf ror-container

test:	
	if [ -d ror-container ]; then \
		cd ror-container ; \
		make test ; \
	fi
