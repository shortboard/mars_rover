Mars Rover
==========

Contact Details
---------------
Damien Simpson  
shortboard@iinet.net.au  
github.com/shortboard  

To Run
------
* `rake` - will run the tests and the execute the program with input.txt as input
* `rake execute` - will run the program with input.txt as input
* `rake test` - will just run rspec
* `ruby "FILENAME"` - to run with a custom file

Technologies Used
-----------------
* ruby
* rspec
* tomdoc

Assumptions I've Made
---------------------
I made the fairly wide assumption that the input given would not contain any errors (other than the case).
I also assumed that rovers could occupy the same space (but designed the code in a way i could change this with ease)

Design
------
I tried to contain as much code in it's logical class as posible. A mars rover only recieves simple instructions one at
a time. The plateau recieves it's size at creation and has functions for creating rovers (which it holds in an array, because
they are contained in the bounds of the plateau), it also allows a string of instructions to be sent to the rovers.

ps. I'm relatively new to Ruby so I apologize for any style goofs i may have made. I am much more experienced with Javascript
and C# so possibly i should have used them, however i thought it would be more fun to do this task with Ruby so i went with 
it (and it was!).