#!/bin/sh

export PATH=${PATH}:/usr/local/bin
SOURCEDIR=/mnt/data/
BACKUPDIR=/mnt/90day/
#TODAY=`date '+%y%m%d'`
#LOGDIR=/var/log/pdumpfs
/usr/local/bin/pdumpfs ${SOURCEDIR} ${BACKUPDIR} > /dev/null
#${LOGDIR}${TODAY}.log
# chmod -R 755 ${BACKUPDIR}
/usr/local/bin/pdumpfs-clean --keep 0Y0M0W90D ${BACKUPDIR}