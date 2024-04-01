#!/usr/bin/python3
"""
This script takes the repository name and owner name as arguments and
retrieves the number of commits in the repository.
"""

import requests
import sys

if __name__ == "__main__":
    repo_name = sys.argv[1]
    owner_name = sys.argv[2]

    url = f"https://api.github.com/repos/{owner_name}/{repo_name}/commits"
    response = requests.get(url)
    data = response.json()
    
    print(len(data))
