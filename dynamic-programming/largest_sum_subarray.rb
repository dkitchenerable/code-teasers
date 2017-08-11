=begin
  problem: 
  solution: keep a current max and global max. do not add when current_max is negative, replace with current value instead
  time: O(n)
  space: O(1)
=end
def largest_sum_subarray(arr)
  return nil if arr.empty?
  current_max = arr[0]
  global_max = arr[0]
  for i in 1..arr.size-1
    if current_max < 0
      current_max = arr[i]
    else
      current_max += arr[i]
    end
    global_max = current_max if global_max < current_max
  end
  return global_max
end
