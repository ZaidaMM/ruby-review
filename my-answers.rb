# 1)
# round up a float up and convert it to an Integer,
# so 3.214 becomes 4
def round_up_number(float)
  float.ceil
end
puts round_up_number(3.214)
# ==> 4

# 2)
# round down a float up and convert it to an Integer,
# so 9.52 becomes 9
def round_down_number(float)
  float.floor
end
puts round_down_number(3.214)
# ==> 3

# 3)
# turn a positive integer into a negative integer. A negative integer
# stays negative
def make_numbers_negative(number)
  number > 0 ? number*(-1) : number
end
puts make_numbers_negative(-5)
# ==> -5

# 4)
# swap the keys and values in a hash. e.g.
# {'a' => 'b', 'c' => 'd'} becomes
# {'b' => 'a', 'd' => 'c'}
def swap_keys_and_values_in_a_hash(hash)
  hash.invert()
end
myhash = {'a' => 'b', 'c' => 'd'} 
puts swap_keys_and_values_in_a_hash(myhash)
# ==>  {'b' => 'a', 'd' => 'c'}

# 5)
# in a hash where the keys and values are all numbers
# add all the keys and all the values together, e.g.
# {1 => 1, 2 => 2} becomes 6
def add_together_keys_and_values(hash)
 puts hash.inject(0){|sum, hash| sum =+ (hash.values.sum + hash.keys.sum)}
 # Other solution ===> puts total = hash.values.sum + hash.keys.sum
end
myhash = [{1 => 1, 2 => 2}] 
add_together_keys_and_values(myhash)

# 6)
# turn an array (with an even number of elements) into a hash, by
# pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
# {'a' => 'b', 'c' => 'd'}
def convert_array_to_a_hash(array)
  Hash  Hash[*array]
end
array = ['a', 'b', 'c', 'd']
puts convert_array_to_a_hash(array)

# 7)
# take out all the capital letters from a string
# so 'Hello JohnDoe' becomes 'ello ohnoe'
def remove_capital_letters_from_string(string)
  string.gsub(/[A-Z]/, "")
end
string = 'Hello JohnDoe'
puts remove_capital_letters_from_string(string)

# cut strings in half, and return the first half, e.g.
# 'banana' becomes 'ban'. If the string is an odd number of letters
# round up - so 'apple' becomes 'app'
def get_first_half_of_string(string)
  len = (string.length-1)/2
  string.slice!(0..len)
end
mystring='apple'
puts get_first_half_of_string(mystring)

