#!/bin/bash

if [ -z $SOURCE_PATH ]; then
    echo "SOURCE_PATH is not set"
    exit 1
fi

if [ -z $DESTINATION_GCS_PATH]; then
    echo "DESTINATION_GCS_PATH is not set"
    exit 1
fi

gsutil rsync -r ${SOURCE_PATH} ${DESTINATION_GCS_PATH}
echo "Sync completed"
exit 0
