#!/bin/bash
# infinite while true loop to run until manual stop
# curl to measure time and to get status code
while true; do echo -n "$(date) "; curl -s -o /dev/null -w "%{time_total} %{http_code}\n" $HOST -k; sleep $INTERVAL; done