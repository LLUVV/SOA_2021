# frozen_string_literal: true

def makestr(num)
  if (num % 3).zero? && (num % 5).zero?
    'FizzBuzz'
  elsif (num % 3).zero?
    'Fizz'
  elsif (num % 5).zero?
    'Buzz'
  else
    num.to_s
  end
end

def fizzbuzz(num)
  1.upto(num).map do |i|
    item = makestr(i)
    item = yield(item) if block_given?
    item
  end
end
