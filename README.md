# vkucukcakar/base

Base Docker image with common tools

* Common tools used in configuration, healtcheck and various scripts installed
* tini (for running as PID 1 to overcome zombie process issue) 
* gettext (for envsubst command), netcat (for nc command), wget, curl, bash (for Alpine), ca-certificates and more
* Alpine and Debian based images

## Supported tags

* alpine, latest
* debian

## Examples

### Example (Alpine Linux based image)

	$ docker run -it --rm --name test-vkucukcakar-base vkucukcakar/base:alpine /bin/bash

### Example (Debian based image)

	$ docker run -it --rm --name test-vkucukcakar-base vkucukcakar/base:debian /bin/bash
	