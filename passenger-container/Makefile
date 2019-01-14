all:	passenger-container

passenger-container:
	git clone https://github.com/sclorg/passenger-container.git
	cd passenger-container ; \
	git submodule update --init ; \
	patch -p 1 -i ../passenger-container-s390x.patch ; \
	make

push:
	if [ -d passenger-container ]; then \
		cd passenger-container ; \
		make push ; \
	fi
	@rm -rf passenger-container

tag:
	if [ -d passenger-container ]; then \
		cd passenger-container ; \
		make tag ; \
		cd .. ; \
		../retag.sh passenger ; \
	fi

clean:
	if [ -d passenger-container ]; then \
		cd passenger-container ; \
		make clean ; \
	fi
	@rm -rf passenger-container

test:
	if [ -d passenger-container ]; then \
		cd passenger-container ; \
		make test ; \
	fi
