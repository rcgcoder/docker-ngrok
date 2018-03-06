#!/bin/sh -e

file="/opt/ngrok/conf/ngrok.yml"
if [ -f "$file" ]
then
	exec "ngrok start -config=/opt/ngrok/conf/ngrok.yml default_tunnel"
else
	exec "ngrok start -config=/home/ngrok/.ngrok2/ngrok.yml default_tunnel"
fi
