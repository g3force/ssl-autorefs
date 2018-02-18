#!/bin/sh

# https://www.dropbox.com/sh/yc4wyfl91mtwu6e/AAAKTBVIhKioZoVnQZOoRsSCa?dl=0
logfile=2017-07-27-erforce-src.log.gz
if [ ! -f $logfile ]; then
	wget "https://www.dropbox.com/sh/yc4wyfl91mtwu6e/AADm6JnY2pGOu2hIHf_eFxuva/$logfile"
fi

ssl-logtools/build/bin/logplayer $logfile
