#!/bin/bash

cat > /etc/GeoIP.conf <<EOF
UserId $USERID
LicenseKey $LICENSEKEY
ProductIds ${PRODUCTIDS:-"106 133"}
EOF

geoipupdate

tar --exclude '*.lock' --directory /usr/share/GeoIP --create --file /output/geoip.tar.xz .
