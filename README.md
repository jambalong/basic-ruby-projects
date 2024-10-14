# Basic Ruby Projects

This repository contains basic Ruby problem-solving projects from [The Odin Project](https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby#basic-ruby-projects)

## Prerequisites:

1. Ensure you have Ruby installed on your machine. You can download and install it from here. To verify installation, run:
   ```bash
   ruby -v
   ```

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/jambalong/basic-ruby-projects.git
   ```

2. Navigate to the project directory:
   ```bash
   cd basic-ruby-projects
   ```

3. Run the individual Ruby files:
   ```bash
   ruby caesar_cipher.rb
   ruby substrings.rb
   ruby stock_picker.rb
   ruby bubble_sort.rb
   ```

## Project: Caesar Cipher

Implement a Caesar Cipher that takes in a string and a shift factor, outputting the modified string where each letter is shifted by the given amount.

Example:
```ruby
> caesar_cipher("What a string!", 5)
=> "Bmfy f xywnsl!"
```

- Convert characters to numbers.
- Wrap from 'z' to 'a'.
- Preserve case sensitivity.

## Project: Substrings

Create a method `#substrings` that takes a word and an array of valid substrings, returning a hash of each substring found and its frequency.

Example:
```ruby
> dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
=> ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

> substrings("below", dictionary)
=> { "below" => 1, "low" => 1 }

> substrings("Howdy partner, sit down! How's it going?", dictionary)
=> { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
```

- Convert strings to arrays.
- Handle case insensitivity.

## Project: Stock Picker

Write a method `#stock_picker` that accepts an array of stock prices, returning the best days to buy and sell for maximum profit.

Example:
```ruby
stock_picker([17,3,6,9,15,8,6,1,10])
=> [1, 4] # Profit: 12
```

- Buy before selling.
- Consider edge cases like lowest price on the last day.

## Project: Bubble Sort

Implement a `#bubble_sort` method that sorts an array using the bubble sort algorithm.

Example:
```ruby
bubble_sort([4,3,78,2,0,2])
=> [0, 2, 2, 3, 4, 78]
```

- The method should implement the bubble sort logic without using built-in sort functions.
