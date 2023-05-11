#!/bin/bash

if [[ $# -ne 2 ]]; then
  echo "Usage: $0 input.json output.csv"
  exit 1
fi

#headers=$(cat ${1} | jq -r '.["regions"] | keys_unsorted | @csv')
headers=$(cat ${1} | jq -r '(.[0] | keys_unsorted) as $keys | ([$keys] + map([.[ $keys[] ]])) [] | @csv')
echo "$headers" > "$2"

#data=$(jq -r '[.[] | to_entries | map(.value | (if type=="string" then "\""+tostring+"\"" else tostring end)) | join(",")]' "$1")
#echo "$data" | awk 'BEGIN { FS=","; OFS="," } { print }' >> "$2"
