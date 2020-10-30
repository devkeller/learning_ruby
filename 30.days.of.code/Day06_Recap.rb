# Enter your code here. Read input from STDIN. Print output to STDOUT
def hack(string)
  even_a = Array.new
  odd_a = Array.new
  
  length = string.length - 1
  0.upto(length).each do |i|
    if i.even?
      even_a << string[i]
    else
      odd_a << string[i]
    end
  end
  puts even_a.join() + " " + odd_a.join()
end

gets.to_i.times do
  arr = gets.strip
  hack(arr)
end
