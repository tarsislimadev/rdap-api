#!/usr/bin/sh

type="${1}"

domain="${2}"

curl -sL "https://rdap.org/${type}/${domain}"
