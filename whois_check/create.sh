#!/bin/bash

# this script is used to create new http checks
# See https://nodeping.com/docs-api-checks.html

set -o nounset
set -o errexit
set -o pipefail
set -o errtrace
set -e 

NODEPING_URL=$1checks?token=$2
TARGET=$3
CONTACT_GROUP_ID=$4
WARNINGDAYS=$5
WHOISSERVER=$6

curl -X PUT \
  -d\
  'json={
    "target":"'"$TARGET"'",
    "notifications":[{"'"$CONTACT_GROUP_ID"'":{"delay":0,"schedule":"All"}}],
    "warningdays": '"$WARNINGDAYS"',
    "whoisserver": "'"$WHOISSERVER"'",
    "sens": 4, "threshold":30,
    "interval": 240, "type":"WHOIS",
    "enabled":"true"}' \
  $NODEPING_URL
