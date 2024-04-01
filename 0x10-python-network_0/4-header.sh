#!/bin/bash
# This script takes in a URL, sends a GET request with header X-School-User-Id set to 98, and displays the body of the response
curl -sH "X-School-User-Id: 98" "$1"
