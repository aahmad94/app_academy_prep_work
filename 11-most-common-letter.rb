# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(str)
  
  
  char_most_times = 0
  test_count = 1
  
  o_count = 0
  while o_count < str.length 
  
    i_count = o_count + 1
    while i_count < str.length
    
      if str[o_count] == str[i_count] && str[o_count] != " "
        test_count += 1
      end
     
      i_count += 1
    end
    
    if test_count > char_most_times
      char_most_times = test_count
      char_most_str = str[o_count]
    end
    
    test_count = 1
    o_count += 1
  end
  
  return [char_most_str, char_most_times]
  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)
