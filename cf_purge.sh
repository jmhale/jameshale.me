#!/bin/bash

curl -X DELETE "https://api.cloudflare.com/client/v4/zones/ <%= ENV['CF_ZONEID_JAMESHALEME'] %>/purge_cache" \
     -H "X-Auth-Email: <%= ENV['CF_API_EMAIL'] %>" \
     -H "X-Auth-Key: <%= ENV['CF_API_KEY'] %>" \
     -H "Content-Type: application/json" \
     --data '{"purge_everything":true}'

echo "Cloudflare cache purged."
