all: chmod busybox

%: Dockerfile.%.build Makefile
	docker build --force-rm -f Dockerfile.$@.build -t busybox-build-$@ .
	docker run --rm busybox-build-$@ cat /$@ > ./$@
	chmod +x ./$@
	# chmod doesn't have help so exits with code 1 - a dynamically linked
	# binary will fail with 127
	./$@ --help >/dev/null; [ $$? = 0 -o $$? = 1 ]
