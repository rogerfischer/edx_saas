# 3
# -
# Define a method sum_to_n? which takes an array of integers and an additional integer, n, as 
# arguments and returns true if any two distinct elements in the array of integers sum to n. 
# An empty array or single element array should both return false. 


def sum_to_n?(array, n)
  #if array[elem1] + array[elem2] == n then true
  if array.empty? || array.length == 1
    false
  elsif array.combination(2).map {|arr| return true if arr.reduce(:+) == n} 
  	# Una's solution is so much nicer, see below
  	# array.combination(2).any? {|a,b| a+b == n}
  end
end

array0 = []
array1 = [5]
array2 = (1..10).to_a
array3 = [4,6,7,1,3,5,6,9,2,10,3]
array4 = [12,11,14,15,16] 

puts sum_to_n?(array0, 3)
puts sum_to_n?(array1, 4)
puts sum_to_n?(array2, 4)
puts sum_to_n?(array3, 99)
puts sum_to_n?(array4, 23)