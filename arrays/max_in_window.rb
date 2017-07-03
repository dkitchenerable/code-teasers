require_relative '../helpers/node.rb'

# problem: given an array and window size, find the highest number in each window.
# NOTE: the first 0..window_size-1 elements contain answers, whereas the last window_size-1..array size contain none
# NOTE: returning array to represent highest in each window
# runtime: O(n)
# space: O(window_size)
# my solution:
#  - for the first 0 to window_size-1 elements prep a linked list by adding all elements to the end but evicted elements at the tail, smaller than the current array element. always push to back.
#  - for window_size to end of array, evict elements at tail less than comparing element.  evict head, if outside window. always push to back. at end of iteration write current head to result array

def max_in_window(arr, window_size)
  return [] if arr.empty?
  window_size = arr.size if window_size > arr.size
  result = []
  window = LinkedList.new
  # calculate max of first window
  for i in 0..window_size-1
    if window.tail != nil
    # remove all from tail that are less than current
      while window.tail.key <= arr[i]
        window.pop_back
        break if window.tail == nil
      end
    end
    window.push_back(Node.new(arr[i], i))
    # we know that the max is at the head
    result << window.head.key
  end

  window_start = 1
  for i in window_size..arr.size-1
    # remove all from tail that are less than current
    while window.tail.key <= arr[i]
      window.pop_back
      break if window.tail == nil
    end

    # evict head if it falls outside window
    if window.head 
      if window.head.value < window_start
        window.pop_front
      end
    end
    window.push_back(Node.new(arr[i], i))
    window_start += 1

    result << window.head.key
  end

  return result
end
