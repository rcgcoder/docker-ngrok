#!/bin/sh -e

ARGS="ngrok"
file="/opt/ngrok/conf/ngrok.yml"
if [ -f "$file" ]
then
	ARGS="$ARGS start -config=/opt/ngrok/conf/ngrok.yml default_tunnel"
else
	ARGS="$ARGS start -config=/home/ngrok/.ngrok2/ngrok.yml default_tunnel"
fi

set -x
exec $ARGS