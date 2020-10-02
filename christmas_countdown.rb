require 'date'

def countdown_to_xmas
  # 1. What day is it today?
  today = Date.today
  # 2. When is the next christmas?
  christmas = Date.new(2020, 12, 24)
  # 3. Subtract today from christmas
  return (christmas - today).to_i
end

# Rudimentray testing
puts countdown_to_xmas.class == Integer
puts countdown_to_xmas == 83