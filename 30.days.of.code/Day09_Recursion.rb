# "To iterate is human, to recurse divine."
N = gets.chomp.to_i

def factorial(n)
    n == 0 ? 1 : n * factorial(n-1)
end

puts factorial(N)
