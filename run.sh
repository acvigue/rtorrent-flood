#!/bin/sh

find ${HOME} -name rtorrent.lock -print0 | xargs -0 rm

flood --host=0.0.0.0 --auth none --rtsocket /tmp/rtorrent.sock --rundir /home/torrent/flood --rtorrent
