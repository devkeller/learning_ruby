phonebook = {}
arr = []

n = gets.chomp.to_i

n.times do
  name, number = gets.split
  phonebook[name] = number
end

while true
  input = gets
  break if input == "\n"
  arr << input.chomp
end

0.upto(arr.size-1) do |j|
  puts phonebook.has_key?(arr[j]) ? "#{arr[j]}=#{phonebook[arr[j]]}" : "Not found"
end
