#!/bin/bash

# Java 8 environment

# Exit on any non-zero status.
trap 'exit' ERR
set -E

echo "Installing Java ${JAVA_VERSION} ..."
export DEBIAN_FRONTEND=noninteractive
apt-get -qy update
apt-get -qy --no-install-recommends --no-install-suggests install \
    openjdk-8-jdk \
    ca-certificates-java

# uninstall and clean
apt-get clean -y
rm -r /var/lib/apt/lists/*
rm -rf /usr/share/doc/*
rm -rf /usr/share/doc-gen/*
rm -fr /usr/share/man/*

exit 0

