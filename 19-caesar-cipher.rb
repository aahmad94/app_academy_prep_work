# Write a method that takes in an integer `offset` and a string.
# Produce a new string, where each letter is shifted by `offset`. You
# may assume that the string contains only lowercase letters and
# spaces.
#
# When shifting "z" by three letters, wrap around to the front of the
# alphabet to produce the letter "c".
#
# You'll want to use String's `ord` method and Integer's `chr` method.
# `ord` converts a letter to an ASCII number code. `chr` converts an
# ASCII number code to a letter.
#
# You may look at the ASCII printable characters chart:
#
#     http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters
#
# Notice that the letter 'a' has code 97, 'b' has code 98, etc., up to
# 'z' having code 122.
#
# You may also want to use the `%` modulo operation to handle wrapping
# of "z" to the front of the alphabet.
#
# Difficulty: hard. Because this problem relies on outside
# information, we would not give it to you on the timed challenge. :-)

def caesar_cipher(offset, string)
  
  offset_string = ""
  
  count = 0
  while count < string.length 
    
    # for wrapping the alphabet  
    if string[count].ord + offset > 122
      ascii_new = 96 + (offset - (122 - string[count].ord))
      offset_string << ascii_new.chr
    
    # for decoding purposes  
    elsif string[count].ord + offset < 96 && string[count].ord != 32
      ascii_new = 123 + (offset + (string[count].ord - 97 ))
      offset_string << ascii_new.chr
      
    elsif string[count].ord == 32
      offset_string << 32.chr
      
    else
      ascii_new = string[count].ord + offset
      offset_string << ascii_new.chr
    end
    
    count += 1
  end
  
  return offset_string
  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'caesar_cipher(3, "abc") == "def": ' +
  (caesar_cipher(3, 'abc') == 'def').to_s
)
puts(
  'caesar_cipher(3, "abc xyz") == "def abc": ' +
  (caesar_cipher(3, 'abc xyz') == 'def abc').to_s
)
