###
# vkucukcakar/base
# Base Docker image with common tools
# Copyright (c) 2017 Volkan Kucukcakar
#
# This file is part of vkucukcakar/base.
#
# vkucukcakar/base is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 2 of the License, or
# (at your option) any later version.
#
# vkucukcakar/base is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
# This copyright notice and license must be retained in all files and derivative works.
###

FROM alpine:3.11

LABEL maintainer "Claudio Masia"

# Install bash (for basic level of shell compatibility), wget, openssl (may be required by wget), curl, netcat-openbsd (for healthcheck with nc command, unix socket support etc...), gettext (for envsubst command that can be used for configuration scripts later), tini (for running as PID 1), ca-certificates
RUN apk add --update \
        bash \
        openssl \
        curl \
        netcat-openbsd \
        gettext \
        tini \
        ca-certificates \
    && rm -rf /var/cache/apk/*

# Note: wget, procps already installed on Alpine

# Note: Installing bash shell gives only basic level of script syntax compatibility. GNU Coreutils and GNU equivalents of tools line awk, grep, sed etc. are not included in this image

# Update ca certificates
RUN update-ca-certificates

# Create symbolic link to /tini for compatibility
RUN ln -sf /sbin/tini /tini

# Entrypoint, tini as PID 1
ENTRYPOINT ["/sbin/tini", "--"]
