require 'date'

def christmas_countdown
  # Get today's date and year
  today = Date.today
  year = today.year

  # Check if it is after christmas this year?
  if today.month == 12 && today.day > 24
    year +=1
  end

  christmas = Date.new(year, 12, 24)
  # Subtract today from christmas and convert 
  # resulting Rational to Integer
  return (christmas - today).to_i
end

puts "#{christmas_countdown} days until Christmas."