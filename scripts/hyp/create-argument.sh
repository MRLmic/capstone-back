API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/arguments"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "argument": {
      "content": "'"${CONTENT}"'",
      "position": "'"${POSITION}"'"
    }
  }'

echo
