docker-busyboxes
================

Minimal images containing a statically linked binaries.

aidanhs/chmod
-------------

Intended for use in a flow like

    FROM aidanhs/chmod
    ADD <URL> /output
    RUN ["/chmod", "+x", "/output"]
    ENTRYPOINT ["/output"]

`chmod` is fairly minimal and excludes quite a lot, including any help - see the
documentation for [`chmod` in busybox](http://www.busybox.net/downloads/BusyBox.html#chmod)
if necessary.

aidanhs/busybox
---------------

Full busybox binary at `/busybox`

Building
--------

Run `make` to generate the required binaries that are committed into
this repo.
