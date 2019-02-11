all:	rust-container

rust-container:
	git clone https://github.com/sclorg/rust-container.git
	cd rust-container ; \
	git submodule update --init ; \
	patch -p 1 -i ../rust-container-s390x.patch ; \
	make

push:	
	if [ -d rust-container ]; then \
		../pushit.sh rust ; \
	fi
	@rm -rf rust-container

tag:	
	if [ -d rust-container ]; then \
		cd rust-container ; \
		make tag ; \
		../../retag.sh rust ; \
	fi

clean:
	if [ -d rust-container ]; then \
		cd rust-container ; \
		make clean ; \
	fi
	@rm -rf rust-container

test:	
	if [ -d rust-container ]; then \
		cd rust-container ; \
		make test ; \
	fi
