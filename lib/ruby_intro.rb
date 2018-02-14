# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
    for i in 0 .. arr.length-1
        sum += arr [i]
    end
    return sum
end

def max_2_sum arr
if arr.empty? 
return 0
end
if arr.length==1 
    return arr[0]
else
    #arr.sort!{|x,y| y<=>x}
    #return arr[0]+arr[1]
    return (arr.sort!.pop + arr.sort!.pop)
end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.empty? || arr.length == 1
    return false
  else
    arr.combination(2).to_a.each do |two|
    return true if sum(two) == n
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  (s[0] =~ /^[bcdfghjklmnprstvwxyz]+/i)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s =~ /^[01]/
    return true if s.to_i(2) % 4 == 0
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price

  def initialize (book_number, cost)
    raise ArgumentError if book_number.empty? or cost <= 0
    @isbn = book_number
    @price = cost
  end

  def price_as_string
    format("$%.2f", @price)
  end
end
