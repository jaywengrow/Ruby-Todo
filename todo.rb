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
  when "done"
	  value = ARGV[1].to_i - 1
  	lines.delete_at(value)
  	File.open("todo.txt", "w")
  	create.puts lines
  else 
  	puts "You have not entered a valid command. Please use 'add', 'list', or 'delete'."
end


	