# SOLVED
# rotate an array given a positive integer

require_relative '../utility.rb'
def rotate_array(arr, num_rotations)
  num_rotations = (num_rotations - arr.size).abs if num_rotations > arr.size
  Utility.reverse(arr, 0, arr.size-1)
  Utility.reverse(arr, 0, num_rotations-1)
  Utility.reverse(arr, num_rotations, arr.size-1)
end

for i in 0..7
  arr = [1,2,3,4,5]
  rotate_array(arr, i)
  p "num rotations #{i} result: #{arr}"
end
