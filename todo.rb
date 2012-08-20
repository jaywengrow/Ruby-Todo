create = File.open("todo.txt", "a")
lines = File.readlines("todo.txt")
command = ARGV[0]
text = ARGV[1]

case command
  when "add"
	  create.puts text unless text.nil?
  	  if text.nil?
  	    puts "Todo not added.  You must specify a value for your todo before it can be saved."
  	  else
  	    puts "added #{text} to the todo file"
  	  end	
  when "list"
	  line_number = 0
  	  lines.each do |line|
  	    puts "#{line_number += 1}: #{line}"
  	  end
  when "done"
	  value = text.to_i - 1
  	lines.delete_at(value)
  	File.open("todo.txt", "w")
  	create.puts lines
  else 
  	puts "You have not entered a valid command. Please use 'add', 'list', or 'delete'."
end


	