=begin

This is my journal of working through this problem.

Ok...so I finally figured out "ARGV".  ARGV takes input from the command line and stores
it in an array.  ARGV[0] is referencing the first element in the array.  So, in the command line
if I put "ruby todo.rb add 'test'", then "add" is ARGV[0] (the first element in the ARGV array) and ARGV[1] is "test" (the second element in the ARGV array).

This is the first time I've ever been able to understand this.  And, I understood it without using Google.  It just came to me as I was writing the code and seeing how the output worked!

For the list action, I was using a "while" loop to pull this off.  Then, I got to thinking...why in the world am I not using the ".each" method?  So, I trashed the "while" loop and replaced with a ".each" loop.

Also, in using the .each method, I learned how to create a line counter.  At first, I was defining and calling the line counter inside of the block.  When I noticed that wasn't producing the desired results, I placed the line counter outside of the block and then referenced it by using string interpolation.  Then, I realized that you are executing ruby commands during string interpolation, so why not increment my line numbers in one line by using string interpolation?  Sure enough...it worked like a charm!  This is the first time I can truly see what people mean by if you think you can do it in ruby, try it, and it will probably work.  That was awesome!

Ok, the delete file gave me a few problems, but I was able to get it worked out.  I knew I needed to pass the lines from the file into an array and match the user input with the position in the array.  I figured out how to map the ARGV position with the position of the filelines array pretty quickly.  However, I had trouble figuring out how to actually execute deleting the individual line without replacing the whole file.

I finally ended up deleting the specific todo and rewriting the entire file with the new list.

This was a great exercise and I learned a lot.

=end

create = File.open("todo.txt", "a")
lines = File.readlines("todo.txt")

case ARGV[0]
  when "add"
	  create.puts ARGV[1] unless ARGV[1].nil?
  	  if ARGV[1].nil?
  	    puts "Todo not added.  You must specify a value for your todo before it can be saved."
  	  else
  	    puts "added #{ARGV[1]} to the todo file"
  	  end	
  when "list"
	  line_number = 0
  	  lines.each do |line|
  	    puts "#{line_number += 1}: #{line}"
  	  end
  when "delete"
	  value = ARGV[1].to_i - 1
  	lines.delete_at(value)
  	File.open("todo.txt", "w")
  	create.puts lines
  else 
  	puts "You have not entered a valid command. Please use 'add', 'list', or 'delete'."
end


	