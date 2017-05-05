# Write a method that takes in two numbers. Return the greatest
# integer that evenly divides both numbers. You may wish to use the
# `%` modulo operation.
#
# Difficulty: medium.

def greatest_common_factor(num1, num2)
  
  # solution 1
  # number1.gcd(number2)
  
  #solution 2
  if num1 < num2
    smaller_num = num1
  else
    smaller_num = num2
  end
  
  divisors = []
  
  count = 1
  while count <= smaller_num
    
    if num1 % count == 0 && num2 % count == 0
      divisors << count
    end
    
    count += 1
  end

  return divisors[-1]
  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'greatest_common_factor(3, 9) == 3: ' +
  (greatest_common_factor(3, 9) == 3).to_s
)
puts(
  'greatest_common_factor(16, 24) == 8: ' +
  (greatest_common_factor(16, 24) == 8).to_s
)
puts(
  'greatest_common_factor(3, 5) == 1: ' +
  (greatest_common_factor(3, 5) == 1).to_s
)
