=begin
  problem: given a ptr to a list and an integer, rotate the list integer rotations
  solution: find the (rotation number - list length)node and set next to nil. then, attach that node to the beginning
  time: O(n)
  space: O(1)
=end
def rotate_list(head, num_rotations)
  # get length of list
  length = 0
  current_node = head
  while current_node
    length += 1
    current_node = current_node.next
  end

  return head if length < 2 || num_rotations == 0

  # adjust num_rotations as needed
  num_rotations -= length if num_rotations > length
  

  # find the new end and set to nil
  x = length - num_rotations
  current_ptr = head
  new_end = nil
  for i in 1..x
    new_end = current_ptr if i == x
    current_ptr = current_ptr.next
  end
  new_end.next = nil
  new_head = current_ptr


  # connect the old end to the new end
  while current_ptr.next
    current_ptr = current_ptr.next
  end
  current_ptr.next = head
  head = new_head
  head
end
