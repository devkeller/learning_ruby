# Reimplment Enumerable#reduce

def reduce(list, initial)
  @accumulator = initial
  list.each do |value|
    @accumulator = yield(@accumulator, value)
  end
  @accumulator
end

p reduce(5..10, 0) { |sum, element| sum + element }
p reduce(5..10, 1) { |product, n| product * n }
p reduce([1, 2, 3, 4], 0) { |sum, element| sum + element }
p reduce(1..4, 0) { |sum, element| sum + element }
p reduce(["a", "b", "c", "d"], "") { |sum, element| sum + element }
