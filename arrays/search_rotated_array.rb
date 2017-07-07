# problem: given an array has some amount of rotations, determine if it contains a value
# time: O(logn)
# space: O(1)
# solution: if one half is sorted and val is in range, then normal binary search
# else find the unsorted side and search there
def search_rotated(arr, val)
  rec_search(arr, 0, arr.size-1, val)
end

def rec_search(arr, left, right, val)
  return false if left > right
  middle = (left + right) / 2
  return true if arr[middle] == val
  
  if (arr[left] < arr[middle]) && (val >= arr[left]) && (val < arr[middle])
    rec_search(arr, left, middle, val)
  elsif (arr[right] > arr[middle]) && (val <= arr[right]) && (val > arr[middle])
    rec_search(arr, middle + 1, right, val)
  elsif (arr[left] > arr[middle])
    rec_search(arr, left, middle - 1, val)
  else
    rec_search(arr, middle + 1, right, val)
  end
end
