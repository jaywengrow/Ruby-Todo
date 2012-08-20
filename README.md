This is a very basic command line Ruby app designed to teach programming paradigms and the Ruby language to a beginner.  This app focuses on passing information between the command line and the Ruby app.  It also focuses on the basics of creating and reading files.

Here is what this app should do:

- add - inserts a new line at the bottom of a file named todo.txt
- list - prints each line of todo.txt preceded by a number
- done - removes the line referenced by number

The app can be used from the command line like this:
'''
$ ruby todo.rb add 'paint the fence'

$ ruby todo.rb list
0 paint the fence

$ ruby todo.rb add 'sand the floor'
$ ruby todo.rb add 'wash the car'

$ ruby todo.rb list
0 paint the fence
1 sand the floor
2 wash the car

$ ruby todo.rb done 1

$ ruby todo.rb list
0 paint the fence
1 wash the car
'''

Currently, this app works only when operating within the same directory as the Ruby file.  So, in order to use this app right now, simply save "todo.rb" in a particular directory and then cd into that directory from the command line.  Then, run "ruby todo.rb" followed by one of the commands above to use the app.

By design, the app will create a text file called "todo.txt" for saving the todo list if the text file doesn't already exist within the directory.