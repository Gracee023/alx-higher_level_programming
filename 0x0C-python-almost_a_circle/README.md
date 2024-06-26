0x0C. Python - Almost a circle

Background Context
The AirBnB project is a big part of the Higher level curriculum. This project will help you be ready for it.

In this project, you will review everything about Python:

Import
Exceptions
Class
Private attribute
Getter/Setter
Class method
Static method
Inheritance
Unittest
Read/Write file
You will also learn about:

args and kwargs
Serialization/Deserialization
JSON

Resources
Read or watch:

args/kwargs
JSON encoder and decoder
unittest module
Python test cheatsheet
Learning Objectives
At the end of this project, you are expected to be able to explain to anyone, without the help of Google:

General
What is Unit testing and how to implement it in a large project
How to serialize and deserialize a Class
How to write and read a JSON file
What is *args and how to use it
What is **kwargs and how to use it
How to handle named arguments in a function

Requirements
Python Scripts
Allowed editors: vi, vim, emacs
All your files will be interpreted/compiled on Ubuntu 20.04 LTS using python3 (version 3.8.5)
All your files should end with a new line
The first line of all your files should be exactly #!/usr/bin/python3
A README.md file, at the root of the folder of the project, is mandatory
Your code should use the pycodestyle (version 2.8.*)
All your files must be executable
The length of your files will be tested using wc
All your modules should be documented: python3 -c 'print(__import__("my_module").__doc__)'
All your classes should be documented: python3 -c 'print(__import__("my_module").MyClass.__doc__)'
All your functions (inside and outside a class) should be documented: python3 -c 'print(__import__("my_module").my_function.__doc__)' and python3 -c 'print(__import__("my_module").MyClass.my_function.__doc__)'
A documentation is not a simple word, it’s a real sentence explaining what’s the purpose of the module, class or method (the length of it will be verified)
Python Unit Tests
Allowed editors: vi, vim, emacs
All your files should end with a new line
All your test files should be inside a folder tests
You have to use the unittest module
All your test files should be python files (extension: .py)
All your test files and folders should start with test_
Your file organization in the tests folder should be the same as your project: ex: for models/base.py, unit tests must be in: tests/test_models/test_base.py
All your tests should be executed by using this command: python3 -m unittest discover tests
You can also test file by file by using this command: python3 -m unittest tests/test_models/test_base.py
We strongly encourage you to work together on test cases so that you don’t miss any edge case
Tasks
0. If it's not tested it doesn't work
mandatory
Score: 0.0% (Checks completed: 0.0%)
All your files, classes and methods must be unit tested and be PEP 8 validated.

Note that this is just an example. The number of tests you create can be different from the above example.

Repo:

GitHub repository: alx-higher_level_programming
Directory: 0x0C-python-almost_a_circle
File: tests/
    
1. Base class
mandatory
Score: 0.0% (Checks completed: 0.0%)
Write the first class Base:

Create a folder named models with an empty file __init__.py inside - with this file, the folder will become a Python package

Create a file named models/base.py:

Class Base:
private class attribute __nb_objects = 0
class constructor: def __init__(self, id=None)::
if id is not None, assign the public instance attribute id with this argument value - you can assume id is an integer and you don’t need to test the type of it
otherwise, increment __nb_objects and assign the new value to the public instance attribute id
This class will be the “base” of all other classes in this project. The goal of it is to manage id attribute in all your future classes and to avoid duplicating the same code (by extension, same bugs)

Repo:

GitHub repository: alx-higher_level_programming
Directory: 0x0C-python-almost_a_circle
File: models/base.py, models/__init__.py
    
2. First Rectangle
mandatory
Score: 0.0% (Checks completed: 0.0%)
Write the class Rectangle that inherits from Base:

In the file models/rectangle.py
Class Rectangle inherits from Base
Private instance attributes, each with its own public getter and setter:
__width -> width
__height -> height
__x -> x
__y -> y
Class constructor: def __init__(self, width, height, x=0, y=0, id=None):
Call the super class with id - this super call with use the logic of the __init__ of the Base class
Assign each argument width, height, x and y to the right attribute
Why private attributes with getter/setter? Why not directly public attribute?

Because we want to protect attributes of our class. With a setter, you are able to validate what a developer is trying to assign to a variable. So after, in your class you can “trust” these attributes.

Repo:

GitHub repository: alx-higher_level_programming
Directory: 0x0C-python-almost_a_circle
File: models/rectangle.py
   
3. Validate attributes
mandatory
Score: 0.0% (Checks completed: 0.0%)
Update the class Rectangle by adding validation of all setter methods and instantiation (id excluded):

If the input is not an integer, raise the TypeError exception with the message: <name of the attribute> must be an integer. Example: width must be an integer
If width or height is under or equals 0, raise the ValueError exception with the message: <name of the attribute> must be > 0. Example: width must be > 0
If x or y is under 0, raise the ValueError exception with the message: <name of the attribute> must be >= 0. Example: x must be >= 0

Repo:

GitHub repository: alx-higher_level_programming
Directory: 0x0C-python-almost_a_circle
File: models/rectangle.py
   
4. Area first
mandatory
Score: 0.0% (Checks completed: 0.0%)
Update the class Rectangle by adding the public method def area(self): that returns the area value of the Rectangle instance.

Repo:

GitHub repository: alx-higher_level_programming
Directory: 0x0C-python-almost_a_circle
File: models/rectangle.py
   
5. Display #0
mandatory
Score: 0.0% (Checks completed: 0.0%)
Update the class Rectangle by adding the public method def display(self): that prints in stdout the Rectangle instance with the character # - you don’t need to handle x and y here.

Repo:

GitHub repository: alx-higher_level_programming
Directory: 0x0C-python-almost_a_circle
File: models/rectangle.py
   
6. __str__
mandatory
Score: 0.0% (Checks completed: 0.0%)
Update the class Rectangle by overriding the __str__ method so that it returns [Rectangle] (<id>) <x>/<y> - <width>/<height>

Repo:

GitHub repository: alx-higher_level_programming
Directory: 0x0C-python-almost_a_circle
File: models/rectangle.py
   
7. Display #1
mandatory
Score: 0.0% (Checks completed: 0.0%)
Update the class Rectangle by improving the public method def display(self): to print in stdout the Rectangle instance with the character # by taking care of x and y

Repo:

GitHub repository: alx-higher_level_programming
Directory: 0x0C-python-almost_a_circle
File: models/rectangle.py
   
8. Update #0
mandatory
Score: 0.0% (Checks completed: 0.0%)
Update the class Rectangle by adding the public method def update(self, *args): that assigns an argument to each attribute:

1st argument should be the id attribute
2nd argument should be the width attribute
3rd argument should be the height attribute
4th argument should be the x attribute
5th argument should be the y attribute
This type of argument is called a “no-keyword argument” - Argument order is super important.

Repo:

GitHub repository: alx-higher_level_programming
Directory: 0x0C-python-almost_a_circle
File: models/rectangle.py
   
9. Update #1
mandatory
Score: 0.0% (Checks completed: 0.0%)
Update the class Rectangle by updating the public method def update(self, *args): by changing the prototype to update(self, *args, **kwargs) that assigns a key/value argument to attributes:

**kwargs can be thought of as a double pointer to a dictionary: key/value
As Python doesn’t have pointers, **kwargs is not literally a double pointer – describing it as such is just a way of explaining its behavior in terms you’re already familiar with
**kwargs must be skipped if *args exists and is not empty
Each key in this dictionary represents an attribute to the instance
This type of argument is called a “key-worded argument”. Argument order is not important.

Repo:

GitHub repository: alx-higher_level_programming
Directory: 0x0C-python-almost_a_circle
File: models/rectangle.py
   
10. And now, the Square!
mandatory
Score: 0.0% (Checks completed: 0.0%)
Write the class Square that inherits from Rectangle:

In the file models/square.py
Class Square inherits from Rectangle
Class constructor: def __init__(self, size, x=0, y=0, id=None)::
Call the super class with id, x, y, width and height - this super call will use the logic of the __init__ of the Rectangle class. The width and height must be assigned to the value of size
You must not create new attributes for this class, use all attributes of Rectangle - As reminder: a Square is a Rectangle with the same width and height
All width, height, x and y validation must inherit from Rectangle - same behavior in case of wrong data
The overloading __str__ method should return [Square] (<id>) <x>/<y> - <size> - in our case, width or height
As you know, a Square is a special Rectangle, so it makes sense this class Square inherits from Rectangle. Now you have a Square class who has the same attributes and same methods.

Repo:

GitHub repository: alx-higher_level_programming
Directory: 0x0C-python-almost_a_circle
File: models/square.py
   
11. Square size
mandatory
Score: 0.0% (Checks completed: 0.0%)
Update the class Square by adding the public getter and setter size

The setter should assign (in this order) the width and the height - with the same value
The setter should have the same value validation as the Rectangle for width and height - No need to change the exception error message (It should be the one from width)

Repo:

GitHub repository: alx-higher_level_programming
Directory: 0x0C-python-almost_a_circle
File: models/square.py
   
12. Square update
mandatory
Score: 0.0% (Checks completed: 0.0%)
Update the class Square by adding the public method def update(self, *args, **kwargs) that assigns attributes:

*args is the list of arguments - no-keyworded arguments
1st argument should be the id attribute
2nd argument should be the size attribute
3rd argument should be the x attribute
4th argument should be the y attribute
**kwargs can be thought of as a double pointer to a dictionary: key/value (keyworded arguments)
**kwargs must be skipped if *args exists and is not empty
Each key in this dictionary represents an attribute to the instance

Repo:

GitHub repository: alx-higher_level_programming
Directory: 0x0C-python-almost_a_circle
File: models/square.py
   
13. Rectangle instance to dictionary representation
mandatory
Score: 0.0% (Checks completed: 0.0%)
Update the class Rectangle by adding the public method def to_dictionary(self): that returns the dictionary representation of a Rectangle:

This dictionary must contain:

id
width
height
x
y

Repo:

GitHub repository: alx-higher_level_programming
Directory: 0x0C-python-almost_a_circle
File: models/rectangle.py
   
14. Square instance to dictionary representation
mandatory
Score: 0.0% (Checks completed: 0.0%)
Update the class Square by adding the public method def to_dictionary(self): that returns the dictionary representation of a Square:

This dictionary must contain:

id
size
x
y

Repo:

GitHub repository: alx-higher_level_programming
Directory: 0x0C-python-almost_a_circle
File: models/square.py
   
15. Dictionary to JSON string
mandatory
Score: 0.0% (Checks completed: 0.0%)
JSON is one of the standard formats for sharing data representation.

Update the class Base by adding the static method def to_json_string(list_dictionaries): that returns the JSON string representation of list_dictionaries:

list_dictionaries is a list of dictionaries
If list_dictionaries is None or empty, return the string: "[]"
Otherwise, return the JSON string representation of list_dictionaries

Repo:

GitHub repository: alx-higher_level_programming
Directory: 0x0C-python-almost_a_circle
File: models/base.py
   
16. JSON string to file
mandatory
Score: 0.0% (Checks completed: 0.0%)
Update the class Base by adding the class method def save_to_file(cls, list_objs): that writes the JSON string representation of list_objs to a file:

list_objs is a list of instances who inherits of Base - example: list of Rectangle or list of Square instances
If list_objs is None, save an empty list
The filename must be: <Class name>.json - example: Rectangle.json
You must use the static method to_json_string (created before)
You must overwrite the file if it already exists

Repo:

GitHub repository: alx-higher_level_programming
Directory: 0x0C-python-almost_a_circle
File: models/base.py
   
17. JSON string to dictionary
mandatory
Score: 0.0% (Checks completed: 0.0%)
Update the class Base by adding the static method def from_json_string(json_string): that returns the list of the JSON string representation json_string:

json_string is a string representing a list of dictionaries
If json_string is None or empty, return an empty list
Otherwise, return the list represented by json_string

Repo:

GitHub repository: alx-higher_level_programming
Directory: 0x0C-python-almost_a_circle
File: models/base.py
   
18. Dictionary to Instance
mandatory
Score: 0.0% (Checks completed: 0.0%)
Update the class Base by adding the class method def create(cls, **dictionary): that returns an instance with all attributes already set:

**dictionary can be thought of as a double pointer to a dictionary
To use the update method to assign all attributes, you must create a “dummy” instance before:
Create a Rectangle or Square instance with “dummy” mandatory attributes (width, height, size, etc.)
Call update instance method to this “dummy” instance to apply your real values
You must use the method def update(self, *args, **kwargs)
**dictionary must be used as **kwargs of the method update
You are not allowed to use eval

Repo:

GitHub repository: alx-higher_level_programming
Directory: 0x0C-python-almost_a_circle
File: models/base.py
   
19. File to instances
mandatory
Score: 0.0% (Checks completed: 0.0%)
Update the class Base by adding the class method def load_from_file(cls): that returns a list of instances:

The filename must be: <Class name>.json - example: Rectangle.json
If the file doesn’t exist, return an empty list
Otherwise, return a list of instances - the type of these instances depends on cls (current class using this method)
You must use the from_json_string and create methods (implemented previously)

Repo:

GitHub repository: alx-higher_level_programming
Directory: 0x0C-python-almost_a_circle
File: models/base.py
   
20. JSON ok, but CSV?
#advanced
Score: 0.0% (Checks completed: 0.0%)
Update the class Base by adding the class methods def save_to_file_csv(cls, list_objs): and def load_from_file_csv(cls): that serializes and deserializes in CSV:

The filename must be: <Class name>.csv - example: Rectangle.csv
Has the same behavior as the JSON serialization/deserialization
Format of the CSV:
Rectangle: <id>,<width>,<height>,<x>,<y>
Square: <id>,<size>,<x>,<y>

Repo:

GitHub repository: alx-higher_level_programming
Directory: 0x0C-python-almost_a_circle
File: models/
   
21. Let's draw it
#advanced
Score: 0.0% (Checks completed: 0.0%)
Update the class Base by adding the static method def draw(list_rectangles, list_squares): that opens a window and draws all the Rectangles and Squares:

You must use the Turtle graphics module
To install it: sudo apt-get install python3-tk
To make the GUI available outside your vagrant machine, add this line in your Vagrantfile: config.ssh.forward_x11 = true
No constraints for color, shape etc… be creative!

Uncommented line in /etc/ssh/ssh_config that said # ForwardX11 no and change no to yes.
Then added line config.ssh.forward_agent = true to my Vagrantfile in addition to config.ssh.forward_x11 = true.
Halted my vm with vagrant halt and started it back up with vagrant up --provision then vagrant ssh.
If you get an error that looks like /usr/bin/xauth: timeout in locking authority file /home/vagrant/.Xauthority, then enter rm .Xauthority (you may have to sudo).
Logout and restart the vm with vagrant up --provision.
Test with xeyes. If Xquartz is installed on the Mac OS it should open in an Xquartz window.
It is your responsibility to request a review for this task from a peer before the project’s deadline. If no peers have been reviewed, you should request a review from a TA or staff member.

Repo:

GitHub repository: alx-higher_level_programming
Directory: 0x0C-python-almost_a_circle
File: models/base.py
 

