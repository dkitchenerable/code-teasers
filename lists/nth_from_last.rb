require_relative '../helpers/node.rb'
=begin
  problem: given a value n, find the nth to last node
  solution: maintain two pointers, pointing to head and nth element. move each one up until nth pointer reaches end.
  time:O(n)
  space:O(1)
=end
def nth_from_last(head, nth)
  head_pointer = head
  nth_pointer = head
  # create n pointer
  for i in 1..nth
    return nil if nth_pointer.nil?
    nth_pointer = nth_pointer.next
  end

  while nth_pointer
    nth_pointer = nth_pointer.next
    head_pointer = head_pointer.next
  end

  return head_pointer.key
end
