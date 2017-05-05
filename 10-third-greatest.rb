# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
#
# Difficulty: medium.

def third_greatest(nums)
  # solution 1
  # nums.sort!
  # nums[-3]
  
  # solution 2
  first = 0
  second = 0
  third = 0
  
  
  count = 0
  while count < nums.length
  
    if first < nums[count] 
      third = second
      second = first
      first = nums[count]
    elsif second < nums[count]
      third = second
      second = nums[count]
    elsif third < nums[count]
      third = nums[count]
    end
    
    count += 1
  end
  
  return third
  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'third_greatest([5, 3, 7]) == 3: ' +
  (third_greatest([5, 3, 7]) == 3).to_s
)
puts(
  'third_greatest([5, 3, 7, 4]) == 4: ' +
  (third_greatest([5, 3, 7, 4]) == 4).to_s
)
puts(
  'third_greatest([2, 3, 7, 4]) == 3: ' +
  (third_greatest([2, 3, 7, 4]) == 3).to_s
)
