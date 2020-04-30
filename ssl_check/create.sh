#!/bin/bash

# this script is used to create new http checks
# See https://nodeping.com/docs-api-checks.html

set -o nounset
set -o errexit
set -o pipefail
set -o errtrace

NODEPING_URL=$1checks?token=$2
TARGET=$3
CONTACT_GROUP_ID=$4
WARNINGDAYS=$5

curl -X PUT \
  -d\
  'json={
    "warningdays": '"$WARNINGDAYS"',
    "target":"'"$TARGET"'",
    "notifications":[{"'"$CONTACT_GROUP_ID"'":{"delay":0,"schedule":"All"}}],
    "threshold":15,
    "interval": 15,
    "type":"SSL",
    "enabled":"true"}' \
  $NODEPING_URL
