#!/bin/bash

sudo docker run -d -it \
    --network influxdata \
    -p 8086:8086 \
    -p 8082:8082 \
    -p 8089:8089 \
    -e INFLUXDB_DB=db0 -e INFLUXDB_ADMIN_ENABLED=true \
    -e INFLUXDB_ADMIN_USER=admin -e INFLUXDB_ADMIN_PASSWORD=it1234 \
    -e INFLUXDB_USER=telegraf \
    -e INFLUXDB_USER_PASSWORD=telegraf \
    -v influxdb_volume:/var/lib/influxdb \
    -v influxdb_volume:/etc/influxdb \
    --name tick_influxdb \
    influxdb:latest
