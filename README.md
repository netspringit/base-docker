# vkucukcakar/base

Base Docker image with common tools

* Common tools used in configuration, healtcheck and various scripts installed
* tini (for running as PID 1 to overcome zombie process issue) 
* gettext (for envsubst command), netcat (for nc command), wget, curl, bash, ca-certificates and more
* Alpine based image

## Supported tags

* latest (Alpine based)
* Some version based tags can be available, please see tags section on Docker Hub

## Examples

	$ docker run -it --rm --name test-vkucukcakar-base vkucukcakar/base /bin/bash

## Notice

Support for Debian based image has reached it's end-of-life.
Debian related file(s) were moved to "legacy" folder for documentary purposes.
Sorry, but it's not easy for me to maintain both Alpine and Debian based images.

If you really need the Debian based image, please use previous versions up to v1.0.3.
