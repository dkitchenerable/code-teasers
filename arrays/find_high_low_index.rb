=begin
  problem: given a sorted array, find the lowest and highest occurrence of a value
  solution: for low index, use binary search until left iterator is greater than right iterator. left iterator either sits at the lowest value or value does not exist. Vice versa for high index
  NOTE: returns nil for no match
  time:  O(logn)
  space: O(1)
=end
def find_high_low_index(arr, val)
  lo = get_low(arr, val)
  high = get_high(arr, val)
  return [lo, high]
end

def get_low(arr, val)
  left = 0
  right = arr.size - 1
  while left <= right
    middle = (left + right) / 2
    if val <= arr[middle]
      right = middle - 1
    else
      left = middle + 1
    end
  end

  arr[left] == val ? left : nil
end

def get_high(arr, val)
  left = 0
  right = arr.size - 1
  while left <= right
    middle = (left + right) / 2
    if arr[middle] <= val
      left = middle + 1
    else
      right = middle - 1
    end
  end

  arr[right] == val ? right : nil
end
