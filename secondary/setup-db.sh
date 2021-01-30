#!/bin/bash
set -e

pg_basebackup -h 192.168.160.2 -U admin -D /var/lib/postgresql/data/ -R --progress
sed -i.bak -e 's/#\?hot_standby = on/hot_standby = on/g' /var/lib/postgresql/data/postgresql.conf
