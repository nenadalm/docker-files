#!/usr/bin/env bash

cat >> /etc/hosts <<EOF
$(ip route | head -n1 | cut -d' ' -f3) host 
EOF

