#!/bin/bash

set -e

first_run=true

if [[ -f "/var/lib/ldap/DB_CONFIG" ]]; then
    first_run=false
fi


if [[ "$first_run" == "true" ]]; then
    echo "first run"
fi

exec "$@"