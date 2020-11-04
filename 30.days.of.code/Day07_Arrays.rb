# Given some digits each seperated by a space,
# the code will return the digits in reverse order.

arr = gets.strip.split(' ').map(&:to_i)
puts arr.reverse.join(' ')
