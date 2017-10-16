#!/bin/bash

cat > /etc/GeoIP.conf <<EOF
UserId $USERID
LicenseKey $LICENSEKEY
ProductIds ${PRODUCTIDS:-"106 133"}
EOF

geoipupdate

cp /usr/share/GeoIP/* /output/
