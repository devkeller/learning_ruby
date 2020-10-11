# Hashes 
my_hash = Hash.new
other_hash = {}
# Any object can be a key
{ 1 => "eins", 2 => "zwei", 3 => "drei" }
{ :one => "eins", :two => "zwei", :three => "drei" }
{ "weights" => ["pound", "kilogram"], "lengths" => ["meter", "mile"] }
{ :de => { :one => "eins", :two => "zwei", :three => "drei" } }

# Hashes CRUD
# Create
dictionary = { :one => "eins", :two => "zwei", :three => "drei" }
dictionary["zero"] = "null"
# Read
dictionary["one"]
# Update
dictionary["one"] = "uno"
# Delete
dictionary.delete(:three)
p dictionary

# Use the map iterator to convert the variable students, an array of arrays, into an array of hashes. 
# Those hashes should have two keys: name, and  age.
students = [ [ "George", 28 ], [ "Elena", 25 ], [ "Damian", 21 ] ]

transformed_students = students.map do |student_info|
  {
    name: student_info[0],
    age: student_info[1]
  }
end

p transformed_students

# An exception to the shorter {symbol: value} syntax is when you would like to use a numeric key:
# hash = {1: 'one'} # will not work
hash = {1 => 'one'} # will work
