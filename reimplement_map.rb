# Reimplement #map.
def map(arr)
  new_arr = []
  arr.each do |e|
    new_arr << yield(e)
  end
  new_arr
end

test = %w{ 1 2 3 4 5 6 7 8 }
p map(test) { |item| item * 2 }
