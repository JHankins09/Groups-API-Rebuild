#!/bin/bash

curl "http://localhost:4741/groups/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "group": {
      "group_name": "'"${NAME}"'",
      "group_type": "'"${TYPE}"'",
      "group_description": "'"${DESC}"'",
      "group_admin": "'"${EMAIL}"'"
    }
  }'

echo
