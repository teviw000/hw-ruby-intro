# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
	arr.inject(0){ |sum, n| sum + n }
end

def max_2_sum arr
  # YOUR CODE HERE
	if arr.size < 1
		return 0
	else
		maxArr = arr.max(2)
		return maxArr.reduce(:+)
	end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
	arr.combination(2).any? { |a, b| a + b == n }  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
	return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
	return false if s.empty?	
	/^[b-df-hj-np-tv-z]/.match(s[0].downcase) != nil
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
	return true if s == "0"
	/^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock
# YOUR CODE HERE
	attr_accessor :isbn, :price
	def initialize (isbn, price)
		raise ArgumentError if isbn.empty? || price <= 0
		@isbn = isbn
		@price = price	
	end

	def price_as_string
		sprintf("$%2.2f", @price)
	end
end
