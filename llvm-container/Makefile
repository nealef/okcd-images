all:	llvm-container

llvm-container:
	git clone https://github.com/sclorg/llvm-container.git
	cd llvm-container ; \
	git submodule update --init ; \
	patch -p 1 -i ../llvm-container-s390x.patch ; \
	make

push:
	if [ -d llvm-container ]; then \
		cd llvm-container ; \
		make push ; \
	fi
	@rm -rf llvm-container

tag:
	if [ -d llvm-container ]; then \
		cd llvm-container ; \
		make tag ; \
		cd .. ; \
		../retag.sh llvm ; \
	fi

clean:
	if [ -d llvm-container ]; then \
		cd llvm-container ; \
		make clean ; \
	fi
	@rm -rf llvm-container

test:
	if [ -d llvm-container ]; then \
		cd llvm-container ; \
		make test ; \
	fi
