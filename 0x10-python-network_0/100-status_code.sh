#!/bin/bash
# This script sends a request to a URL passed as an argument and displays only the status code of the response

curl -s -o response.txt -w "%{http_code}" "$1"
grep -o '[0-9]\+' response.txt
rm response.txt
