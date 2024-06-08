# frozen_string_literal: true

def substrings(word, dictionary)
  substring_count = Hash.new(0)

  word_characters = word.chars

  word_characters.each_index do |start_index|
    (start_index...word_characters.length).each do |end_index|
      substring = word_characters[start_index..end_index].join.downcase

      substring_count[substring] += 1 if dictionary.include?(substring)
    end
  end

  substring_count
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

p substrings('below', dictionary) # => { "below" => 1, "low" => 1 }

# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
p substrings("Howdy partner, sit down! How's it going?", dictionary)

# Input string and array
# Output hash

# Datastructure is array of word characters

# Initialize a hash to contain substring counts
# Convert word into characters array
# Take dictionary, and iterate each item
# Compare item equal to each substring of characters array
# I need to iterate through characters array
# Start at index 0
# Upto index.length - 1

# If dictionary includes the substring then add that item count to hash

# return hash
