#!/usr/bin/env bash

find /opt/phpfarm/inst/ -name 'php.ini' | xargs -I{} sh -c "echo \"xdebug.remote_host=$(ip route | head -n1 | cut -d' ' -f3)\" >> {}"

