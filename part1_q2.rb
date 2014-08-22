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
  	# method returns the sum of its two largest elements.
  	array.sort.last(2).inject(:+) 
  end
end


array0 = []
array1 = [5]
array2 = (1..10).to_a
array3 = [4,6,7,1,3,5,6,9,2,10,3]
array4 = [12,11,14,15,16] 

puts max_2_sum(array0)
puts max_2_sum(array1)
puts max_2_sum(array2)
puts max_2_sum(array3)
puts max_2_sum(array4)
