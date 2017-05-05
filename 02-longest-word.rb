# Write a method that takes in a string. Return the longest word in
# the string. You may assume that the string contains only letters and
# spaces.
#
# You may use the String `split` method to aid you in your quest.
#
# Difficulty: easy.

def longest_word(sentence)
  
  res_idx = 0
  compare_to = 0
  
  arr = sentence.split(" ")
  
  count = 0
  while count < arr.length
  
    if arr[count].length > compare_to
      compare_to = arr[count].length
      res_idx = count
    end
  
    count += 1
  end
  
  return arr[res_idx]
  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'longest_word("short longest") == "longest": ' +
  (longest_word('short longest') == 'longest').to_s
)
puts(
  'longest_word("one") == "one": ' +
  (longest_word('one') == 'one').to_s
)
puts(
  'longest_word("abc def abcde") == "abcde": ' +
  (longest_word('abc def abcde') == 'abcde').to_s
)
