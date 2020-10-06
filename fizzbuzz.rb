require 'rspec/autorun'

class FizzBuzz
  def fizz_buzz(number)
    if number % 3 == 0
      return 'Fizz'
    elsif number % 5 == 0
      return 'Buzz'
    else
      return number.to_s
    end
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
    it "should return #{input} for #{result}" do
      expect(subject.fizz_buzz(input)).to eq(result)
    end
  end
end
