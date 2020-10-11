i = 4
d = 4.0
s = 'HackerRank '

# Declare second integer, double/float, and String variables.
int, dub, str = 0, 0.0, ""
# Read and save an integer, double/float, and String to your variables.
puts "Enter a number and hit Enter"
int = gets.chomp.to_i
puts "Enter a number with decimal points and hit Enter"
dub = gets.chomp.to_f
puts "Enter a word and hit Enter"
str = gets.chomp.to_s
# Print the sum of both integer variables on a new line.
puts i + int
# Print the sum of the double variables on a new line.
puts d + dub
# Concatenate and print the String variables on a new line
# The 's' variable above should be printed first.
puts s + str