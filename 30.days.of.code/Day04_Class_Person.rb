class Person
  attr_accessor :age
  def initialize(initial_Age)
    @age = initial_Age > 0 ? initial_Age : 0
    puts "Age is not valid, setting age to 0." if initial_Age < 0
  end
  def am_I_Old()
    if (@age < 13)
      puts "You are young."
    elsif (13...18).include?(@age)
      puts "You're a teenager."
    else
      puts "You are old."
    end
  end
  def year_Passes()
    @age += 1
  end
end

puts 'Enter amount of persons to evaluate'
T=gets.to_i
for i in (1..T)do
  puts 'Enter persons age'
  age=gets.to_i
  person=Person.new(age)
  person.am_I_Old()
  for j in (1..3)do
      person.year_Passes()
  end
  puts '...one year later'
  person.am_I_Old
  puts ""
end   
