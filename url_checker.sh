#!/bin/bash
infile=${1:-urls.txt}

while IFS= read -r url; do
  # Skip empty lines
  [ -z "$url" ] && continue

  # Get the HTTP status code
  code=$(curl -o /dev/null -s -w "%{http_code}" "$url")

  # Print only if it's 200
  if [ "$code" = "200" ]; then
    echo "$url"
  fi
done < "$infile"
