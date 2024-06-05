def caesar_cipher(string, shift_factor)
  upcase_alphabet = ('A'..'Z').to_a
  downcase_alphabet = ('a'..'z').to_a

  characters = string.split('').map.with_index do |char, char_index|
    if upcase_alphabet.include?(char)
      # I find the index of the char in the upcase_alphabet array and shift
      # Using the % operator, I can wrap around the array
      cipher_index = upcase_alphabet.index(char)
      upcase_alphabet[(cipher_index + shift_factor) % upcase_alphabet.length]
    elsif downcase_alphabet.include?(char)
      cipher_index = downcase_alphabet.index(char)
      downcase_alphabet[(cipher_index + shift_factor) % downcase_alphabet.length]
    else
      char
    end
  end

  characters.join('') # ciphered string is returned
end

p caesar_cipher("What a string!", 5) # => "Bmfy f xywnsl!"

# Input string
# Output string

# Shift alphabetic character by shift_factor
# Keep character case the same
# Return a string encrypted using caesar_cipher

# Maybe try using array as data structure

# Split string into characters
# Iterate through characters
# If character is in alphabet then shift by shift_factor
    # if alphabet array includes character
    # find the index of character in alphabet array
    # add shift_factor to index and find the character in that index
    # return character of that index

# return the characters ciphered as one string using String#join
