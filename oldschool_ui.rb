# Flow - If...elsif...else VS case statement
puts "What do you want to do? [read|write|exit]"
action = gets.chomp
# if...elsif...else
=begin
if action == 'read'
  puts "Entering read mode..."
elsif action == 'write'
  puts "Entering write mode..."
elsif action == 'exit'
  puts "Goodbye!"
else
  puts "Incorrect choice! -check your spelling"
end
=end

# Use case statement if number of cases is greater than 5
# if...else is better for boolean values, switch is for 
# evaluating true cases, i.e. testing for possible values.

# inlined case statement
case action
when "read"   then puts "Entering read mode..."
when "write"  then puts "Entering write mode..."
when "exit"   then puts "Goodbye!"
else
  puts "Incorrect choice! -check your spelling"
end
=begin
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
=end