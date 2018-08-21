#!/bin/bash

curl "http://localhost:4741/jokes" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "joke": {
      "title": "'"${TITLE}"'",
      "joke": "'"${JOKE}"'",
      "writer": "'"${WRITER}"'"
    }
  }'

echo