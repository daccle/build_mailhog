#!/bin/bash

export VERSION=0.1.7

git clone https://github.com/deogracia/MailHog-debian-package
cd MailHog-debian-package
mkdir -p package/usr/sbin
chmod 755 package/usr/sbin
cd package/usr/sbin
wget https://github.com/mailhog/MailHog/releases/download/v$VERSION/MailHog_linux_amd64
mv MailHog_linux_amd64 mailhog
chmod 755 mailhog
cd ../../..
bash restore-permission.bash

fakeroot dpkg-deb --build package

mv package.deb ~/data/mailhog-$VERSION-amd64.deb

