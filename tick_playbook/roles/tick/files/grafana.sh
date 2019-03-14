#!/bin/bash

sudo docker run -it -d \
    -p 3000:3000 \
    --network influxdata \
    --name tick_grafana \
    -v grafana_volume:/var/lib/grafana \
    -v grafana_volume:/etc/grafana \
    grafana/grafana:latest
