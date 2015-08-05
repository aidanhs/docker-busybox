docker-chmod
============

Minimal image containing a statically linked chmod. Intended for use in a flow
like

    FROM aidanhs/chmod
    ADD <URL> /output
    RUN ["/chmod", "+x", "/output"]
    ENTRYPOINT ["/output"]

`chmod` is fairly minimal and excludes quite a lot, including any help - see the
documentation for [`chmod` in busybox](http://www.busybox.net/downloads/BusyBox.html#chmod)
if necessary.

Building
--------

Run `make` to generate the required chmod binary which is committed into
this repo.
