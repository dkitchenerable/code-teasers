require_relative '../helpers/node.rb'
=begin
  problem: given a list and value(n), swap places with head
  solution: find nth position node, while keeping track of previous node
  NOTE: assumes non-empty list
  time: O(n)
  space: O(1)
=end
def swap_node(head, n)
  prev_node = nil
  head_next = head.next
  current_node = head
  counter = 1
  while current_node
    if counter == n
      prev_node.next = head if prev_node
      head = current_node
      current_node.next = head_next
      return head
    else
      prev_node = current_node
      current_node = current_node.next
      counter += 1
      return nil if counter > n
    end
  end
end
