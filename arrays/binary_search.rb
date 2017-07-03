# problem: given a sorted array, determine if value exists in it or not
# runtime: O(logn)
# space: O(1)
# my solution: use binary search, with an option to use recursive or non
def binary_search(arr, val, strategy='rec')
  if strategy != 'rec'
    search(arr, val)
  else
    rec_search(arr, val, 0, arr.size - 1)
  end
end

def rec_search(arr, val, left, right)
  return false if left > right
  middle = (left + right) / 2
  return true if arr[middle] == val
  if val < arr[middle]
    right = middle - 1
    return rec_search(arr, val, left, right)
  else
    left = middle + 1
    return rec_search(arr, val, left, right)
  end
end

def search(arr, val)
  left = 0
  right = arr.size
  while left <= right
    middle = (left + right) / 2
    return false if  arr[middle].nil?
    return true if arr[middle] == val
    if val < arr[middle]
      left = left
      right = middle - 1
    else
      left = middle + 1
      right = right
    end
  end
  return false
end
