# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  arr.inject(0){|sum,x| sum + x }
end

def max_2_sum(arr)
  arr.max(2).inject(0){|sum,x| sum + x }
end

def sum_to_n?(arr, n)
  arr.combination(2).detect{|x,y| x + y == n} != nil
end

# Part 2

def hello(name)
  'Hello, ' + name
end

def starts_with_consonant?(s)
  # (!!(s[0] =~ /[a-z]/i)) && (!!(s[0] =~ /[^aeiou]/i))
  !!(s[0] =~ /(?=[a-z])(?=[^aeiou])/i)
end

def binary_multiple_of_4? s
  (/^[10]*00$/.match(s) != nil) || (s == "0")
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    raise ArgumentError.new(
     "isbn should not be an empty string!"
    ) if isbn.to_s.strip.empty?() == true
  
    raise ArgumentError.new(
     "price should be more than 0!"
    ) if price.positive?() == false
  
      @isbn = isbn
      @price = price
  end
  
  def price_as_string
    "$#{'%.2f' % @price.round(2)}"
  end
end
