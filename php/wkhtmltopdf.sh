#!/bin/sh
TEMP_DEB="$(mktemp)"
wget -O "$TEMP_DEB" 'https://downloads.wkhtmltopdf.org/0.12/0.12.5/wkhtmltox_0.12.5-1.bionic_amd64.deb'
dpkg -i "$TEMP_DEB"
rm -f "$TEMP_DEB"