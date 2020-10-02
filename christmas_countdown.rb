require 'date'

def christmas_countdown
  # 1. What day is it today?
  today = Date.today
  # 2. When is the next christmas?
  christmas = Date.new(2020, 12, 24)
  # 3. Subtract today from christmas
  return (christmas - today).to_i
end

# Rudimentray testing
puts christmas_countdown.class == Integer
puts christmas_countdown == 83