require_relative '../helpers/node.rb'
=begin
  problem: given two lists, determine if they intersect, and if so return key
  my solution:
  time: O(n)
  space: O(1)
=end

def list_intersection(head1, head2)
  # first get list sizes
  l1_size = get_size(head1)
  l2_size = get_size(head2)
  current_1 = head1
  current_2 = head2
   
  if l1_size > l2_size
    current_1 = update_start(head1, l1_size - l2_size)
  elsif l2_size > l1_size
    current_2 = update_start(head2, l2_size - l1_size)
  end

  while current_1
    return current_1.key if current_1.key == current_2.key
    current_1 = current_1.next
    current_2 = current_2.next
  end

  return nil
end

private

def update_start(head, moves)
  for i in 1..moves
    head = head.next
  end
  return head
end

def get_size(head)
  size = 0
  node = head
  while node
    size += 1
    node = node.next
  end
  return size
end
