#!/bin/sh -e

DIR="$( cd "$( dirname "$0" )" && pwd )"

FILES=${DIR}/*.proto

OPTS=""
for f in $FILES
do
    OPTS="${OPTS}"
done
protoc --proto_path=${DIR} \
       ${OPTS} \
       --dart_out="${DIR}" \
       $FILES
