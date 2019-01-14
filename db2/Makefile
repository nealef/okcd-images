VERSION=$(shell cat VERSION)
DB2EXPRESSC_URL="https://iwm.dhe.ibm.com/sdfdl/v2/regs2/db2pmopn/db2_v111_devc/Xa.2/Xb.MmcrqOJZXZWs0qC86_8BOUtQeXuAgISeuuk8dqJSY2s/Xc.db2_v111_devc/v11.1_linux390x64_dec.tar.gz/Xd./Xf.LPr.D1vk/Xg.9905424/Xi.mrs-db2devcdbsrv/XY.regsrvs/XZ.LK8hhXfkJC6o9tZPhphckjnaRuo/v11.1_linux390x64_dec.tar.gz"
DB2EXPRESSC_DATADIR=/vol/db2data

all:	db2express-c

db2express-c:
	git clone https://github.com/IMC3ofC/db2express-c.docker.git db2express-c
	cd db2express-c ; \
	cp ../db2server.rsp . ; \
	patch -p 1 -i ../db2express-c-s390x.patch ; \
	docker build --tag clefos/db2express-c --label VERSION=$(VERSION) --build-arg DB2EXPRESSC_URL=$(DB2EXPRESSC_URL) . 

push:
	docker tag clefos/db2express-c:latest clefos/db2express-c:clefos7
	docker tag clefos/db2express-c:latest clefos/db2express-c:$(VERSION)
	docker push clefos/db2express-c:latest
	docker push clefos/db2express-c:clefos7
	docker push clefos/db2express-c:$(VERSION)

clean:
	docker rmi clefos/db2express-c:latest || true
	docker rmi clefos/db2express-c:clefos7 || true
	docker rmi clefos/db2express-c:$(VERSION) || true
	rm -rf db2express-c
