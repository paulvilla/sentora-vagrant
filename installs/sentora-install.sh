#!/bin/bash
# -*- ENCODING: UTF-8 -*-
cd /root
wget http://sentora.org/install -O sentora_install.sh
chmod +x sentora_install.sh
./sentora_install.sh -t Europe/Madrid -d cpanel.sentora.dev -i 192.168.33.10
exit