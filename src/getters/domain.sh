#!/usr/bin/sh

# inputs

. .env

domain_id=$( date +%Y%m%d%H%M%S )

echo
echo "domain_id: ${domain_id}"
echo

domain="${1}"

echo
echo "domain: ${domain}"
echo 

# runner

type="domain"

object="google.com.br"

resp=$( curl -sL "https://rdap.org/${type}/${object}" | jq )

# outputs

bash create.sh "domains" "${domain}" "domain" "${domain}"

bash create.sh "domains" "${domain}" "resp" "${resp}"

# echo "${resp}"
