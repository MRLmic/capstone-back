API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/hypotheses"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "hypothesis": {
      "title": "'"${TITLE}"'"
    }
  }'

echo
