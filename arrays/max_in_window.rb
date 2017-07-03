require_relative '../../data_structures/node.rb'
#SOLVED
# given a window size and an array find the highest number in each window

def max_in_window(arr, window_size)
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

  p window_start
  p result

end

arr = [-4,2,-5,1,-1,6]
max_in_window(arr, 3)
