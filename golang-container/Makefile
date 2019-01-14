all:	golang-container

golang-container:
	git clone https://github.com/sclorg/golang-container.git
	cd golang-container ; \
	git submodule update --init ; \
	patch -p 1 -i ../golang-container-s390x.patch ; \
	make

push:
	if [ -d golang-container ]; then \
		cd golang-container ; \
		make push ; \
	fi
	@rm -rf golang-container

tag:
	if [ -d golang-container ]; then \
		cd golang-container ; \
		make tag ; \
		cd .. ; \
		../retag.sh golang ; \
	fi

clean:
	if [ -d golang-container ]; then \
		cd golang-container ; \
		make clean ; \
	fi
	@rm -rf golang-container

test:
	if [ -d golang-container ]; then \
		cd golang-container ; \
		make test ; \
	fi
