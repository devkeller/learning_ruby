puts "Enter a positive number and find out whether it is weird or not."
N = gets.strip.to_i

if N.even?
  if ((2..5).include?(N) or N>20)
    puts 'Not Weird'
  elsif (6..20).include?(N)   
    puts 'Weird'
  end
else
  puts 'Weird'
end
