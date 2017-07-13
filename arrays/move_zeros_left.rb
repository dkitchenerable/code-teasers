=begin
  problem: given an array of integers, move all zeros to the beginning of array maintaining order
  solution: maintain a write/read index iterate
  time:  O(n)
  space: O(1)
=end

def move_zeros_to_left(arr)
  read = arr.size - 1
  write = arr.size - 1
  while read >= 0
    if arr[read] != 0
      arr[write] = arr[read]
      write -= 1
    end
    read -= 1
  end

  # place all the zeros at the beginning
  while write >= 0
    arr[write] = 0
    write -= 1
  end

  return arr
end
