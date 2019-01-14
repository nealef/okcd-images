all:	s2i-wildfly

s2i-wildfly:
	git clone https://github.com/openshift-s2i/s2i-wildfly.git
	cd s2i-wildfly ; \
	git submodule update --init ; \
	export DOCKER_REPO=clefos ; \
	patch -p 1 -i ../s2i-wildfly-s390x.patch ; \
	make

push:
	@docker push clefos/wildfly-81-centos7:latest
	@docker push clefos/wildfly-90-centos7:latest
	@docker push clefos/wildfly-100-centos7:latest
	@docker push clefos/wildfly-101-centos7:latest
	@docker push clefos/wildfly-110-centos7:latest
	@docker push clefos/wildfly-120-centos7:latest
	@docker push clefos/wildfly-130-centos7:latest
	@docker push clefos/wildfly-140-centos7:latest

tag:

clean:
	@docker rmi clefos/wildfly-81-centos7:latest
	@docker rmi clefos/wildfly-90-centos7:latest
	@docker rmi clefos/wildfly-100-centos7:latest
	@docker rmi clefos/wildfly-101-centos7:latest
	@docker rmi clefos/wildfly-110-centos7:latest
	@docker rmi clefos/wildfly-120-centos7:latest
	@docker rmi clefos/wildfly-130-centos7:latest
	@docker rmi clefos/wildfly-140-centos7:latest
	@rm -rf s2i-wildfly

test:
	if [ -d s2i-wildfly ]; then \
		cd s2i-wildfly ; \
		make test ; \
	fi
