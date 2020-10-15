test = "My phone number is (091) 555-1234."
phone_re = /\((\d{3})\)\s+(\d{3})-(\d{4})/
match = phone_re.match(test)

unless match
  puts "There was no match."
  exit
end
print "The whole string started with: "
puts match.string
print "The entire part of the string that matched: "
puts match[0]
puts "The three captures: "
3.times do |index|
  puts "Capture ##{index + 1}: #{match.captures[index]}"
end
puts "Here's another way to get at the first capture: "
print "Capture #1: "
puts match[1]
