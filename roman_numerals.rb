require 'benchmark'

OLD_DIVIDERS = [1000, 500, 100, 50, 10, 5, 1]
OLD_CHAR = ["M", "D", "C", "L", "X", "V", "I"]

NEW_DIVIDERS = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
NEW_CHAR = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]

def old_roman_numeral(number)
  roman_numeral = ""
  OLD_DIVIDERS.each_with_index do |divider, index|
    t = number / divider
    t.times do
      roman_numeral << OLD_CHAR[index]
    end
    number = number % divider
  end
  return roman_numeral
end

def old_roman_numerals(an_integer)
  numerals = ''
  if an_integer >= 1000
    numerals << 'M' * (an_integer / 1000)
    an_integer = an_integer % 1000
  end
  if an_integer >= 500
    numerals << 'D' * (an_integer / 500)
    an_integer = an_integer % 500
  end
  if an_integer >= 100
    numerals << 'C' * (an_integer / 100)
    an_integer = an_integer % 100
  end
  if an_integer >= 50
    numerals << 'L' * (an_integer / 50)
    an_integer = an_integer % 50
  end
  if an_integer >= 10
    numerals << 'X' * (an_integer / 10)
    an_integer = an_integer % 10
  end
  if an_integer >= 5
    numerals << 'V' * (an_integer / 5)
    an_integer = an_integer % 5
  end
  numerals << 'I' * (an_integer / 1)
  return numerals
end

def new_roman_numeral(number)
  roman_numeral = ""
  NEW_DIVIDERS.each_with_index do |divider, index|
    t = number / divider
    t.times do
      roman_numeral << NEW_CHAR[index]
    end
    number = number % divider
  end
  return roman_numeral
end

def new_roman_numerals(an_integer)
  # TODO: translate integer in roman number - modern-style way
  numerals = old_roman_numeral(an_integer)
  numerals.gsub!("DCCCC", "CM")
  numerals.gsub!("CCCC", "CD")
  numerals.gsub!("LXXXX", "XC")
  numerals.gsub!("XXXX", "XL")
  numerals.gsub!("VIIII", "IX")
  numerals.gsub!("IIII", "IV")
  return numerals
end

Benchmark.bm(10) do |x|
  x.report('old: 17')     { old_roman_numeral(17) }
  x.report('olds: 17')    { old_roman_numerals(17) }
  x.report('old: 499')    { old_roman_numeral(499) }
  x.report('olds: 499')   { old_roman_numerals(499) }

  x.report('new: 17')     { new_roman_numeral(17) }
  x.report('news: 17')    { new_roman_numerals(17) }
  x.report('new: 499')    { new_roman_numeral(499) }
  x.report('news: 499')   { new_roman_numerals(499) }
end