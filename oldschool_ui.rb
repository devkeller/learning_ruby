# Flow - If...elsif...else VS case statement
puts "What do you want to do? [read|write|exit]"
action = gets.chomp

# inlined case statement
case action
when "read"   then puts "Entering read mode..."
when "write"  then puts "Entering write mode..."
when "exit"   then puts "Goodbye!"
else
  puts "Incorrect choice! -check your spelling"
end
