# 3.1. 

x = "8:25 PM" 
if x =~ /(\d\d?):(\d\d)\s*([ap])m$/i
  puts "matching"
  puts $1
  puts $2
  puts $3
else
  puts "not matching"
end

# i = ignore case when matching
# \w = "word" character ([a-zA-Z0-9]) 
# \s = whitespace character
# \d = decimal digit ([0-9])
# ^ = start of line
# $ = end of line

if "Catch 22" =~ /\w+\s+\d+/
  puts "matching"
else
  puts "not matching"
end


# 3.2. Everything is an Object

puts 5.class.superclass # class = Fixnum ; superclass = Integer
puts 5.respond_to?('class')
# puts 5.methods
puts 5.method(:+)
puts 5.method(:ceil)

50.times do print "*" end
puts	

puts 1.2.class
puts "hello".class
puts [].class

# 3.3. Every Operation is a Method Call
# 3.4. Classes, Methods, and Inheritance
 