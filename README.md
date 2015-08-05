docker-chmod
============

Minimal image containing a statically linked chmod. Intended for use in a flow
like

    FROM aidanhs/chmod
    ADD <URL> /output
    RUN ["/chmod", "+x", "/output"]
    ENTRYPOINT ["/output"]

Building
--------

Use devicemapper or you'll hit https://github.com/docker/docker/issues/13451.

Just run `make` to generate the required chmod binary which is committed into
this repo.
