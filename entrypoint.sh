#!/bin/sh -e

file="/opt/ngrok/conf/ngrok.yml"
if [ -f "$file" ]
then
	exec "/bin/ngrok start -config=/opt/ngrok/conf/ngrok.yml default_tunnel"
else
	exec "/bin/ngrok start -config=/home/ngrok/.ngrok2/ngrok.yml default_tunnel"
fi
