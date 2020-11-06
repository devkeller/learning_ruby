# Constraint: n is a positive integer!
n = gets.strip.to_i

# Given a base-10 integer, n, convert it to binary (base-2).
def to_binary(n)
  n.to_s(2)
end
# Then find and print the base-10 integer denoting the maximum
# number of consecutive 1's in n's binary representation.
array = to_binary(n).split.map(&:to_i)
puts array.join.split("0").group_by(&:size).max.first
