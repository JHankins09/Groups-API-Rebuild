#!/bin/bash

curl "http://localhost:4741/memberships" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
