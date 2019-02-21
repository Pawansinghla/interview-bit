#!/bin/bash

function checkServiceStatus() {
    # param 1: service_name
    if [ -z `docker ps -q -f "status=running" --no-trunc | grep $(docker-compose --compatibility -f docker-production.yml ps -q "$1")` ]; then
        echo "No, it's not running."
        return -1
    else
        echo "Yes, it's running."
        return 1
    fi
}

if sudo -n true 2>/dev/null; then
   echo "sudo rights: Ok."
else
   echo "You need sudo right to run this command"
   exit -1
fi

checkServiceStatus clickhouse-server
if [ $? -eq 0 ]; then
    echo "Clickhouse server is not running"
    exit 1
fi

if [ ! -f "/home/remdev/db-size.log" ]; then
    touch /home/remdev/db-size.log
    echo "date, rows, bytes" >> /home/remdev/db-size.log
fi

echo "Collecting info"
NUM_ENTRIES=$(docker exec aqosta_clickhouse-server_1 /usr/bin/clickhouse-client --port 9001 --database=aqosta --query="select count() from netSession")
TABLE_SIZE=$(du -s /var/lib/clickhouse/data/aqosta | tr -d '[:punct:][:space:][:alpha:]')
echo "`date '+%Y-%m-%d %H:%M:%S %Z'`, $NUM_ENTRIES, $TABLE_SIZE" >> /home/remdev/db-size.log
