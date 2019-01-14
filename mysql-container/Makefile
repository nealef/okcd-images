all:	mysql-container

mysql-container:
	git clone https://github.com/sclorg/mysql-container.git
	cd mysql-container ; \
	git submodule update --init ; \
	patch -p 1 -i ../mysql-container-s390x.patch ; \
	make

push:
	if [ -d mysql-container ]; then \
		cd mysql-container ; \
		make push ; \
	fi
	@rm -rf mysql-container

tag:
	if [ -d mysql-container ]; then \
		cd mysql-container ; \
		make tag ; \
		cd .. ; \
		../retag.sh mysql ; \
	fi

clean:
	if [ -d mysql-container ]; then \
		cd mysql-container ; \
		make clean ; \
	fi
	@rm -rf mysql-container

test:
	if [ -d mysql-container ]; then \
		cd mysql-container ; \
		make test ; \
	fi
