#!/bin/sh

. .env

# inputs

from="domains"

echo
echo "from: ${from}"
echo

to="domains"

echo
echo "to: ${to}"
echo

domains=$( ls "${DATABASE}/${from}" )

echo
echo "domains: ${domains}"
echo

# runner

for domain in $domains

do

resp=$( cat "${DATABASE}/${from}/${domain}/resp" | jq '.entities[].publicIds[]' )

echo
echo "resp: ${resp}"
echo

type=$( echo "${resp}" | jq '.type' )

identifier=$( echo "${resp}" | jq '.identifier' )

# outputs

bash create.sh "domains" "${domain}" "type" "${type}"

bash create.sh "domains" "${domain}" "identifier" "${identifier}"

sleep 1

done
