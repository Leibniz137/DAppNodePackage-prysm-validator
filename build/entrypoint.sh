#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset

PASSWORD=${PASSWORD:-}
DATADIR=${DATADIR:-/root/.ethereum/}

mkdir -p /data

# if password has not been defined in the environment variable and there is no password file,
# a random password is generated
if [ "$PASSWORD" == '' ]; then 
    if [ ! -f /data/password ]; then
        export PASSWORD=$(echo $(LC_CTYPE=C tr -dc 'A-HJ-NPR-Za-km-z2-9' < /dev/urandom | head -c 20))
        echo $PASSWORD > /data/password
        validator accounts create --keystore-path=/data --password=${PASSWORD} 2>/dev/null >/data/deposit_data.txt
    else
        export PASSWORD=$(cat /data/password)
    fi
elif [ ! -f /data/password ] || [ "$PASSWORD" != $(cat /data/password) ]; then
    echo $PASSWORD > /data/password
    validator accounts create --keystore-path=/data --password=${PASSWORD} 2>/dev/null >/data/deposit_data.txt
fi

supervisord -c /etc/supervisord.conf



