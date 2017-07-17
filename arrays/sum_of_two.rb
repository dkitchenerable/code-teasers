=begin
  problem: give an array and a value, determine if two values exist so that the sum equals value
  my solution: keep a map of the complement.
  time:  O(n)
  space: O(1)
=end
def sum_of_two(arr, sum)
  raise "must have at least 2 values" if arr.size < 2
  complement_map = {}
  arr.each_with_index do |num, index|
    complement = sum - num
    if complement_map[complement]
      return true
    else
      complement_map[num] = true
    end
  end
  return false
end
