# Flow - If...elsif...else VS case statement
puts "What do you want to do? [read|write|exit]"
action = gets.chomp

# case statement
case action
when "read"
  puts "Entering read mode..."
when "write"
  puts "Entering write mode..."
when "exit"
  puts "Goodbye!"
else
  puts "Incorrect choice! -check your spelling"
end
