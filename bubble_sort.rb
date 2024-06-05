def bubble_sort(array)
  num = array.length

  loop do
    swapped = false

    (num-1).times do |index|
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        swapped = true
      end
    end

    break unless swapped
  end

  array
end

p bubble_sort([4,3,78,2,0,2]) # => [0,2,2,3,4,78]

# Input is array
# Output is array

# We are sorting an array using #bubble_sort
# Initialize the amount of passthrough to sort which is array.length - 1

# Loop num-1 amount of times, and use enumerable as index (block parameter)
    # Initialize a flag if we have done any swaps
    # If current element > next element
        # Swap elements, we use multiple assignments to achieve this
        # Toggle swap flag to true
  
    # break loop if there are no swaps

# Return the sorted array
