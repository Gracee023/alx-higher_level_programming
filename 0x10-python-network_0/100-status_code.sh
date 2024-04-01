#!/bin/bash
# This script sends a request to a URL passed as an argument and displays only the status code of the response

# Send the request and save the response to a temporary file
curl -s -o response.txt -w "%{http_code}" "$1"

# Extract the status code from the response file and display it
grep -o '[0-9]\+' response.txt

# Clean up the temporary file
rm response.txt
