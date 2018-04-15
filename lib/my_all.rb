require 'pry'

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    # Send the value to the given block and
    # store the return value into the array
    block_return_values << yield(collection[i])
    i += 1
  end

  if block_return_values.include?(false)
    false
  else
    true
  end
end
