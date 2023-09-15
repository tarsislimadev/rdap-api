#!/usr/bin/sh

# inputs

domain="${1}"

# runner

resp=$( bash ./curl.sh "domain" "${domain}" | jq )

# outputs

bash create.sh "domains" "${domain}" "domain" "${domain}"

bash create.sh "domains" "${domain}" "resp" "${resp}"
