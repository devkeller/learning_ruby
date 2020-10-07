require 'rspec/autorun'

class FizzBuzz
  def fizz_buzz(number)
    if number % 3 == 0 && number % 5 == 0
      return 'FizzBuzz'
    elsif number % 3 == 0
      return 'Fizz'
    elsif number % 5 == 0
      return 'Buzz'
    else
      return number.to_s
    end
  end

  def fizz_buzz_array(number)
  end
end


describe FizzBuzz do
  it 'should return "1" for 1' do
    expect(subject.fizz_buzz(1)).to eq('1')
  end

  it 'should return "2" for 2' do
    expect(subject.fizz_buzz(2)).to eq('2')
  end

  it 'should return "Fizz" for 3' do
    expect(subject.fizz_buzz(3)).to eq('Fizz')
  end

  it 'should return "Buzz" for 5' do
    expect(subject.fizz_buzz(5)).to eq('Buzz')
  end

  it 'should return "FizzBuzz" for 15' do
    expect(subject.fizz_buzz(15)).to eq('FizzBuzz')
  end
end

# Alternative way of writing specification
describe FizzBuzz do
  [
    [1, '1'],
    [2, '2'],
    [3, 'Fizz'],
    [5, 'Buzz'],
    [6, 'Fizz'],
    [10, 'Buzz'],
    [15, 'FizzBuzz']
  ].each do |input, result|
    it "should return '#{result}' for #{input}" do
      expect(subject.fizz_buzz(input)).to eq(result)
    end
  end
end

# Specification for #fizz_buzz_array which returns an array
describe FizzBuzz do
  it "should raise an argument error if passed a number below 1" do
    expect { subject.fizz_buzz_array(0) }.to raise_error ArgumentError
  end

  it "should return the array [ 1 ] for number 1" do
    expect(subject.fizz_buzz_array(1)).to eq([ 1 ])
  end

  it "should return the array [ 1, 2, 'Fizz' ] for number 3" do
    expect(subject.fizz_buzz_array(3)).to eq([ 1, 2, 'Fizz'])
  end

  it "should return the array [ 1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7 ] for number 7" do
    expect(subject.fizz_buzz_array(7)).to eq([ 1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7 ])
  end

  it "should return an array with 'FizzBuzz' at the 15th element of the array (15 is divisible by both 3 and 5)" do
    expect(subject.fizz_buzz_array(100)[14]).to eq 'FizzBuzz'
  end
end
