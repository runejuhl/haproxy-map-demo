#!/usr/bin/env bash

set -euo pipefail

/sbin/syslogd -O /proc/1/fd/1

nginx &
./entrypoint-haproxy.sh haproxy -f "/usr/local/etc/haproxy/haproxy.conf"
