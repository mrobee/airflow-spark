#!/usr/bin/dumb-init /bin/sh

airflow initdb
sleep 3
airflow scheduler &
exec "$@"
