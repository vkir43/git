#!/bin/bash
if [[ ! -f /var/www/html/index.html ]]; then
exit 1
elif echo "quit" | telnet localhost 80 2> /dev/null | grep "Escape character is"; then
exit 0
else exit 1;
fi;
