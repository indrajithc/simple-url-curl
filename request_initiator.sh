#!/bin/bash

echo $1
USERNAME="$2"
PASSWORD="$3"

AUTH=""
if test -n "$USERNAME"
then
    AUTH="$USERNAME:$PASSWORD"        
fi

 for i in $(cat $1); do 
    urxvt -e sh -c "./curl_url.sh  $i $USERNAME $PASSWORD" &
done