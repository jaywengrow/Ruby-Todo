This is a very basic command line Ruby app designed to teach programming paradigms and the Ruby language to a beginner.  This app focuses on passing information between the command line and the Ruby app.  It also focuses on the basics of creating and reading files.

Here is what this app should do:

add - inserts a new line at the bottom of a file named todo.txt

list - prints each line of todo.txt preceded by a number

done - removes the line referenced by number

The app can be used from the command line like this:

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