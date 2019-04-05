.PHONY: sources

sources:
	spectool -g libvirt.spec

srpm:
	rpmbuild -bs libvirt.spec \
	    -D "_sourcedir ${PWD}" \
	    -D "_srcrpmdir ${PWD}"
