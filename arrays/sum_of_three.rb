=begin
  problem: given an array of integer, determing if there is a 
  solution: sort the array initially. then keep two iterators and find in binary search the third value needed to reach the sum.
  time: O(nlogn)
  space: O(1)
=end
def sum_of_three(arr, sum)
  # first sort array
  arr.sort!
  i1 = 0
  i2 = 1
  while i2 < arr.size
    target = sum - arr[i2] - arr[i1]
    return true if bin_search(arr, i2+1, target)
    i1 += 1
    i2 += 1
  end
  return false
end

def bin_search(arr, start_index, target)
  left = start_index
  right = arr.size - 1
  while left <= right
    mid = (left + right) / 2
    if arr[mid] == target
      return true
    elsif target > arr[mid]
      left = mid + 1
    else
      right = mid - 1
    end
  end
  return false
end

p sum_of_three([3,2,1], 6)
