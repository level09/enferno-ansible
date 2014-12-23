#!/bin/bash
set -e
#improve this later
LOGFILE=/home/{{user_name}}/log/enferno.log
LOGDIR=$(dirname $LOGFILE)
NUM_WORKERS=4
  # user/group to run as
USER={{user_name}}
GROUP={{user_name}}
cd /home/{{user_name}}/{{server_hostname}}
test -d $LOGDIR || mkdir -p $LOGDIR
source /home/{{user_name}}/{{server_hostname}}/env/bin/activate
export ENFERNO_ENV='prod'
exec gunicorn  --timeout=300 -b 127.0.0.1:{{enferno_port}} manage:app -w $NUM_WORKERS \
    --user=$USER --group=$GROUP --log-level=debug \
    --log-file=$LOGFILE 2>>$LOGFILE

