chmod:
	docker build --force-rm -f Dockerfile.build -t chmod .
	docker run --rm chmod cat /chmod > ./chmod
	chmod +x ./chmod
