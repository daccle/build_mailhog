#!/bin/bash

apt-get update
apt-get -y upgrade
# Build  deps
apt-get install -y build-essential git fakeroot

su vagrant -c "sh data/build.sh"
