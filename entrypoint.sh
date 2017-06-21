#!/bin/bash

cat > /etc/GeoIP.conf <<EOF
UserId $USERID
LicenseKey $LICENSEKEY
ProductIds ${PRODUCTIDS:-"106 133"}
EOF

geoipupdate

cp --archive /usr/share/GeoIP/* /output
