0x14. JavaScript - Web scraping

Resources
Read or watch:

Working with JSON data
The workflow of accessing the attributes of a simply-created JSON object by Jimmy Tran from Cohort 1 - San Francisco
request module
Modern JS
Learning Objectives
At the end of this project, you are expected to be able to explain to anyone, without the help of Google:

General
Why JavaScript programming is amazing
How to manipulate JSON data
How to use request and fetch API
How to read and write a file using fs module

Requirements
General
Allowed editors: vi, vim, emacs
All your files will be interpreted on Ubuntu 20.04 LTS using node (version 14.x)
All your files should end with a new line
The first line of all your files should be exactly #!/usr/bin/node
A README.md file, at the root of the folder of the project, is mandatory
Your code should be semistandard compliant. Rules of Standard + semicolons on top. Also as reference: AirBnB style
All your files must be executable
The length of your files will be tested using wc
You are not allowed to use var
More Info
Install Node 14
$ curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
$ sudo apt-get install -y nodejs
Install semi-standard
Documentation

$ sudo npm install semistandard --global
Install request module and use it
Documentation

$ sudo npm install request --global
$ export NODE_PATH=/usr/lib/node_modules
Notes: Request module has been deprecated since February 2020 - the team is considering alternative to replace this module - however, it’s a really simple and powerful module for practicing web-scraping in JavaScript (and still used a lot in the industry).

Tasks
0. Readme
mandatory
Write a script that reads and prints the content of a file.

The first argument is the file path
The content of the file must be read in utf-8
If an error occurred during the reading, print the error object

Repo:

GitHub repository: alx-higher_level_programming
Directory: 0x14-javascript-web_scraping
File: 0-readme.js
  
1. Write me
mandatory
Write a script that writes a string to a file.

The first argument is the file path
The second argument is the string to write
The content of the file must be written in utf-8
If an error occurred during while writing, print the error object

Repo:

GitHub repository: alx-higher_level_programming
Directory: 0x14-javascript-web_scraping
File: 1-writeme.js
  
2. Status code
mandatory
Write a script that display the status code of a GET request.

The first argument is the URL to request (GET)
The status code must be printed like this: code: <status code>
You must use the module request

Repo:

GitHub repository: alx-higher_level_programming
Directory: 0x14-javascript-web_scraping
File: 2-statuscode.js
  
3. Star wars movie title
mandatory
Write a script that prints the title of a Star Wars movie where the episode number matches a given integer.

The first argument is the movie ID
You must use the Star wars API with the endpoint https://swapi-api.alx-tools.com/api/films/:id
You must use the module request

Repo:

GitHub repository: alx-higher_level_programming
Directory: 0x14-javascript-web_scraping
File: 3-starwars_title.js
  
4. Star wars Wedge Antilles
mandatory
Write a script that prints the number of movies where the character “Wedge Antilles” is present.

The first argument is the API URL of the Star wars API: https://swapi-api.alx-tools.com/api/films/
Wedge Antilles is character ID 18 - your script must use this ID for filtering the result of the API
You must use the module request

Repo:

GitHub repository: alx-higher_level_programming
Directory: 0x14-javascript-web_scraping
File: 4-starwars_count.js
  
5. Loripsum
mandatory
Write a script that gets the contents of a webpage and stores it in a file.

The first argument is the URL to request
The second argument the file path to store the body response
The file must be UTF-8 encoded
You must use the module request

Repo:

GitHub repository: alx-higher_level_programming
Directory: 0x14-javascript-web_scraping
File: 5-request_store.js
  
6. How many completed?
mandatory
Write a script that computes the number of tasks completed by user id.

The first argument is the API URL: https://jsonplaceholder.typicode.com/todos
Only print users with completed task
You must use the module request

Repo:

GitHub repository: alx-higher_level_programming
Directory: 0x14-javascript-web_scraping
File: 6-completed_tasks.js
  
7. Who was playing in this movie?
#advanced
Write a script that prints all characters of a Star Wars movie:

The first argument is the Movie ID - example: 3 = “Return of the Jedi”
Display one character name by line
You must use the Star wars API
You must use the module request

Repo:

GitHub repository: alx-higher_level_programming
Directory: 0x14-javascript-web_scraping
File: 100-starwars_characters.js
  
8. Right order
#advanced
Write a script that prints all characters of a Star Wars movie:

The first argument is the Movie ID - example: 3 = “Return of the Jedi”
Display one character name by line in the same order of the list “characters” in the /films/ response
You must use the Star wars API
You must use the module request

Repo:

GitHub repository: alx-higher_level_programming
Directory: 0x14-javascript-web_scraping
File: 101-starwars_characters.js
