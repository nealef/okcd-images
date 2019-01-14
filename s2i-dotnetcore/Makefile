all:	s2i-dotnetcore

s2i-dotnetcore:
	git clone https://github.com/redhat-developer/s2i-dotnetcore.git
	cd s2i-dotnetcore ; \
	git submodule update --init ; \
	#patch -p 1 -i ../s2i-dotnetcore-s390x.patch ; \
	#make

push:
	if [ -d s2i-dotnetcore ]; then \
		../pushit.sh dotnetcore ; \
	fi
	@rm -rf s2i-dotnetcore

tag:
	if [ -d s2i-dotnetcore ]; then \
		cd s2i-dotnetcore ; \
		make tag ; \
		cd .. ; \
		../retag.sh dotnetcore ; \
	fi

clean:
	if [ -d s2i-dotnetcore ]; then \
		cd s2i-dotnetcore ; \
		make clean ; \
	fi
	@rm -rf s2i-dotnetcore

test:
	if [ -d s2i-dotnetcore ]; then \
		cd s2i-dotnetcore ; \
		make test ; \
	fi
