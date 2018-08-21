#!/bin/bash

curl "http://localhost:4741/jokes" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo