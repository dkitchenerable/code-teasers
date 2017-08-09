=begin
  problem: given an unsorted array of numbers from 1 to array.size, determine the missing number ie. [1,3] missing is 2
  solution: calculate the expected sum based on array size, then substract the actual sum, to get the missing num
  time: O(n)
  constant: O(1)
=end
def missing_number(nums)
  size = nums.size
  return nil if size < 1

  expected_sum = 0
  for i in 1..size+1
    expected_sum += i
  end

  actual_sum = 0
  nums.each do |num|
    actual_sum += num
  end
  
  return expected_sum - actual_sum
end

p missing_number([1,2,4,5,6,7,3])
