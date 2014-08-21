puts $ruby.is_a?(Object){|oriented| language}
# From http://timelessrepo.com/haiku

# 1
# -
# Define a method sum which takes an array of integers as an argument 
# and returns the sum of its elements. For an empty array it should return zero. 

def sum(array)
 sum_array = array.inject(:+) 
 sum_array != nil ? sum_array : 0
end

# Test Arrays
# -----------
array0 = []
array1 = [5]
array2 = (1..10).to_a
array3 = [4,6,7,1,3,5,6,9,2,10,3]
array4 = [12,11,14,15,16] 

puts sum(array0)
puts sum(array1)
puts sum(array2)


# 2
# -
# Define a method max_2_sum which takes an array of integers as an argument and 
# returns the sum of its two largest elements. For an empty array it should return zero.
# For an array with just one element, it should return that element.

def max_2_sum(array)
  if array.empty?
  	0
  elsif array.length == 1 
  	array
  else
  	# Compare each number to each other to figure out which one is bigger, repeat with the bigger 
  	# each and <=>
  	# how to keep the two largest elements?puts sum(array0)
  	"max_2_sum -- TO DO"
  end
end

puts max_2_sum(array0)
puts max_2_sum(array1)
puts max_2_sum(array2)

# 3
# -
# Define a method sum_to_n? which takes an array of integers and an additional integer, n, as 
# arguments and returns true if any two distinct elements in the array of integers sum to n. 
# An empty array or single element array should both return false. 

def sum_to_n?(array, n)
  #if array[elem1] + array[elem2] == n then true
  if array.empty?
  	false
  elsif array.length == 1
    false
  else
    # Could this be done recursively and more elegantly? With redo or retry maybe?
    # Or hash table: http://stackoverflow.com/questions/2666654/how-to-write-an-
    # algorithm-to-check-if-the-sum-of-any-two-numbers-in-an-array-lis 
  	array.each do |arr_elem|
  	  elem1 = arr_elem
  	  array.each do |arr_elem|
  	    elem2 = arr_elem
  	    sum = elem1 + elem2
  	    return true if n == sum
  	  end
    end
  end
end

puts sum_to_n?(array0, 5)
puts sum_to_n?(array1, 5)
puts sum_to_n?(array2, 7)
puts sum_to_n?(array3, 7)
puts sum_to_n?(array4, 7)
