# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.

def two_sum(nums)
  
  result = []
  
  o_count = 0
  while o_count < nums.length
    
    i_count = o_count + 1
    while i_count < nums.length
    
      if nums[o_count] + nums[i_count] == 0
        result << o_count
        result << i_count
      end
      
      i_count += 1
    end
    
    o_count += 1
  end
  
  if result.length > 0
    return result
  else
    return nil
  end
  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3]).to_s
)
puts(
  'two_sum([1, 3, 5]) == nil: ' + (two_sum([1, 3, 5]) == nil).to_s
)
