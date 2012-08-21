create = File.open("todo.txt", "a")
lines = File.readlines("todo.txt")
command = ARGV[0]
text = ARGV[1]
done = File.open("todo_done.txt", "a")
done_lines = File.readlines("todo_done.txt")

case command
  when "add"
	  create.puts text + ' | ' + (Time.now).to_s unless text.nil?
  	  if text.nil?
  	    puts "Todo not added.  You must specify a value for your todo before it can be saved."
  	  else
  	    puts "added #{text} #{Time.now} to the todo file"
  	  end	
  when "list"
	  line_number = 0
  	  lines.each do |line|
  	    puts "#{line_number += 1}: #{line}"
  	  end
  when "done"
	  value = text.to_i - 1
  	todo_done = lines.delete_at(value)
  	File.open("todo.txt", "w")
  	create.puts lines
  	done.puts todo_done
  when "list_done"
    line_number = 0
  	  done_lines.each do |line|
  	    puts "#{line_number += 1}: #{line}"
	    end
	when "help"
	  commands = ['add', 'list', 'done', 'list_done']
	  puts "Here is a list of commands:"
	    commands.each do |command|
	      puts command
      end
  else 
  	puts "You have not entered a valid command. Please use 'add', 'list', 'done', or 'list_done'."
end


	