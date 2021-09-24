#!/bin/bash

echo $1
USERNAME="$2"
PASSWORD="$3"

AUTH=""
if test -n "$USERNAME"; then
    AUTH="$USERNAME:$PASSWORD"
fi

echo "url: $1"


while :
 do
    if test -n "$AUTH"; then
        curl -o /dev/null -s -w 'Total: %{time_total}s\n' -u "$AUTH" $1
    else
        curl -o /dev/null -s -w 'Total: %{time_total}s\n' $1
    fi
    sleep 1s
done
