puts "Enter price of meal"
mealCost = gets.chomp.to_f
puts "Enter amount to tip"
tipPercent = gets.chomp.to_i
puts "Enter VAT as a number"
taxPercent = gets.chomp.to_i

totalCost = mealCost + (mealCost*(tipPercent.to_f/100)) + (mealCost*(taxPercent.to_f/100))
puts "The total meal cost is #{totalCost.round.to_s} dollars."
