# Blocks and Yield

# How would you define a method accepting a block with dynamic parameters?
def greet(name)
  capitalized_name = name.capitalize
  puts yield(capitalized_name)
end

me = 'george'

greet(me) do |name|
  "Hello #{name}, nice to meet you!"
end
