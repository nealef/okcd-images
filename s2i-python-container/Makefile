all:	s2i-python-container

s2i-python-container:
	git clone https://github.com/sclorg/s2i-python-container.git
	cd s2i-python-container ; \
	git submodule update --init ; \
	patch -p 1 -i ../s2i-python-container-s390x.patch ; \
	make

push:
	if [ -d s2i-python-container ]; then \
		cd s2i-python-container ; \
		make push ; \
	fi
	@rm -rf s2i-python-container

tag:
	if [ -d s2i-python-container ]; then \
		cd s2i-python-container ; \
		make tag ; \
		cd .. ; \
		../retag.sh python ; \
	fi

clean:
	if [ -d s2i-python-container ]; then \
		cd s2i-python-container ; \
		make clean ; \
	fi
	@rm -rf s2i-python-container

test:
	if [ -d s2i-python-container ]; then \
		cd s2i-python-container ; \
		make test ; \
	fi
