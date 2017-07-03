require_relative '../helpers/utility.rb'

# problem: rotate an array given a positive integer
# time: O(n)
# space: O(1)
# solution: reverse, reverse, reverse!
#   1. reverse all the elements
#   2. reverse elements up to num_rotations - 1
#   3. reverse elements from num_rotations to end of array

def rotate_array(arr, num_rotations)
  num_rotations = (num_rotations - arr.size).abs if num_rotations > arr.size
  Utility.reverse(arr, 0, arr.size-1)
  Utility.reverse(arr, 0, num_rotations-1)
  Utility.reverse(arr, num_rotations, arr.size-1)
  return arr
end
