TOKEN="c4c7c722f74eda79cdd6a985612c131a72383ad3"

  ORG="serialp"

  URL_SUFFIX="/enable?circle-token="$TOKEN

  URL_PREFIX="https://circleci.com/api/v1.1/project/github/"$ORG"/"

  while IFS='' read -r repo || [[ -n "$repo" ]]; do

  sleep 2

  curl -X "DELETE" $URL_PREFIX$repo$URL_SUFFIX

  done < "$1"