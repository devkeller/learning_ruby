n = gets.strip.to_i

# Constraint: n is a positive integer!
def to_binary(n)
  n.to_s(2)
end

array = to_binary(n).split.map(&:to_i)
puts array.join.split("0").group_by(&:size).max.first
