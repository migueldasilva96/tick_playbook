#!/usr/bin/env bash

for i in $(find var/lib/kapacitor/alertas/tickscripts -type f -name "*.tick"); do
    echo $i
    IFS='.' read -ra NAMES <<< "$i"
    IFS='/' read -ra NAMES <<< "${NAMES[-2]}"
    if [[ $i == *"batch"* ]]; then
      kapacitor define ${NAMES[-1]} -type batch -tick $i -dbrp db0.autogen
    else
      kapacitor define ${NAMES[-1]} -type stream -tick $i -dbrp db0.autogen
    fi
    kapacitor enable ${NAMES[-1]}
done
