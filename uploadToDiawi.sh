#!/bin/bash
# exit when any command fails
set -e

cd upload-script
search_dir=../build

for entry in "$search_dir"/*.ipa
do
  filename="$(basename -- $entry)"
  echo "--- Uploading file: $filename"
  python3 diawi-cli.py "$entry"
done

cd ..