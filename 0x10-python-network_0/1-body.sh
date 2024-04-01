#!/bin/bash
# This script takes in a URL, sends a GET request to the URL, and displays the body of the response for a 200 status code
curl -sL "$1" -w "%{http_code}" -o /dev/null | grep -q 200 && curl -sL "$1"
