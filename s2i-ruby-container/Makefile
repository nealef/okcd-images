all:	s2i-ruby-container

s2i-ruby-container:
	git clone https://github.com/sclorg/s2i-ruby-container.git
	cd s2i-ruby-container ; \
	git submodule update --init ; \
	patch -p 1 -i ../s2i-ruby-container-s390x.patch ; \
	make

push:
	if [ -d s2i-ruby-container ]; then \
		../pushit.sh ruby ; \
	fi
	@rm -rf s2i-ruby-container

tag:
	if [ -d s2i-ruby-container ]; then \
		cd s2i-ruby-container ; \
		make tag ; \
		cd .. ; \
		../retag.sh ruby ; \
	fi

clean:
	if [ -d s2i-ruby-container ]; then \
		cd s2i-ruby-container ; \
		make clean ; \
	fi
	@rm -rf s2i-ruby-container

test:
	if [ -d s2i-ruby-container ]; then \
		cd s2i-ruby-container ; \
		make test ; \
	fi
