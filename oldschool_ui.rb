# Flow - If...elsif...else VS case statement
puts "What do you want to do? [read|write|exit]"
action = gets.chomp

# if...elsif...else
if action == 'read'
  puts "Entering read mode..."
elsif action == 'write'
  puts "Entering write mode..."
elsif action == 'exit'
  puts "Goodbye!"
else
  puts "Incorrect choice! -check your spelling"
end