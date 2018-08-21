curl "http://localhost:4741/jokes/${ID}" \
 --include \
 --request DELETE \
 --header "Authorization: Token token=${TOKEN}" \

 echo