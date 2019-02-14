all:	thermostat-container

thermostat-container:
	git clone https://github.com/sclorg/thermostat-container.git
	cd thermostat-container ; \
	git submodule update --init ; \
	patch -p 1 -i ../thermostat-container-s390x.patch ; \
	make

push:
	if [ -d thermostat-container ]; then \
		cd thermostat-container ; \
		make push ;\
	fi
	@rm -rf thermostat-container

tag:
	if [ -d thermostat-container ]; then \
		cd thermostat-container ; \
		make tag ; \
		cd .. ; \
		../retag.sh thermostat-container ; \
	fi

clean:
	if [ -d thermostat-container ]; then \
		cd thermostat-container ; \
		make clean ; \
	fi
	@rm -rf thermostat-container

test:
	if [ -d thermostat-container ]; then \
		cd thermostat-container ; \
		make test ; \
	fi
