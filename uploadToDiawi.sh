#!/bin/bash
# exit when any command fails
set -e

# Help
Help()
{
   # Display Help
   echo "Add description of the script functions here."
   echo "Syntax: bash uploadToDiawi.sh [-t|-h]"
   echo "options:"
   echo "-t    Set diawi token."
   echo "-h    Print this Help."
   echo
}

# Get the options
while getopts ":ht:" option; do
   case $option in
      h) # display Help
         Help
         exit;;
      t) # Enter a token
         diawiToken=$OPTARG;;
     \?) # Invalid option
         echo "Error: Invalid option"
         echo
         Help
         exit;;
   esac
done

# Run upload script 
cd upload-script
search_dir=../build

for entry in "$search_dir"/*.ipa
do
  filename="$(basename -- $entry)"
  echo "--- Uploading file: $filename"

  if [ -z "$diawiToken" ]; then
    python3 diawi-cli.py "$entry"
  else
    python3 diawi-cli.py "$entry" -t "$diawiToken"
  fi
done

cd ..