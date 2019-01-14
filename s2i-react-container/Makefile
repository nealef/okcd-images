all:	s2i-react-container

s2i-react-container:
	git clone https://github.com/nodeshift/centos7-s2i-web-app.git s2i-react-container
	cd s2i-react-container ; \
	git submodule update --init ; \
	patch -p 1 -i ../s2i-react-container-s390x.patch ; \
	make build

push:
	if [ -d s2i-react-container ]; then \
		cd s2i-react-container ; \
		make squash publish ; \
	fi
	@rm -rf s2i-react-container

tag:

clean:
	if [ -d s2i-react-container ]; then \
		cd s2i-react-container ; \
		make clean || true ; \
	fi
	@rm -rf s2i-react-container

test:
	if [ -d s2i-react-container ]; then \
		cd s2i-react-container ; \
		make test ; \
	fi
