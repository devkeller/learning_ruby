# Blocks and Yield

# Blocks are like anonymous methods. They are a anonymous collection of code.
# examples
# { |block variable(s)| code}
# 
# do |block variable(s)| 
#   code 
# end

def execute_block
  #block_given?
  yield
end

execute_block { puts "Help, I am being executed!" }

# How would you define a method accepting a block with dynamic parameters?
def greet(name)
  capitalized_name = name.capitalize
  puts yield(capitalized_name)
end

me = 'george'

greet(me) do |name|
  "Hello #{name}, nice to meet you!"
end
