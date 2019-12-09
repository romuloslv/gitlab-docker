#!/bin/bash

set -u

SRC=/etc/gitlab
DST=/var/opt/gitlab/config-backups
DATE="`date +%s_%Y_%m_%d`"
DAYS_TO_KEEP=7

docker-compose exec gitlab gitlab-rake gitlab:backup:create

docker-compose exec gitlab install -m0700 -d "$DST"
docker-compose exec gitlab tar czf "$DST/$DATE.tar.gz" $SRC

docker-compose exec gitlab find "$DST" -mindepth 1 -maxdepth 1 -type f -name '*.tar.gz' -mtime +$DAYS_TO_KEEP -delete