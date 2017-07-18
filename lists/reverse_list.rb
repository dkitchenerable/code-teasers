require_relative '../helpers/node.rb'
=begin
  problem: reverse a singly-linked list(contains no tail pointer)
  my solution: keep two variables, a previous and current node. update on every iteration. once we have reached the end of the list, we know we are at head
  time: O(n)
  space: O(1)
=end
def reverse_list(head,recursive=false)
  return rec(head) if recursive

  prev_node = nil
  current_node = head
  while current_node
    orig_next = current_node.next
    current_node.next = prev_node
    prev_node = current_node
    current_node = orig_next
  end
  return prev_node
end

def rec(current_node, prev_node=nil)
  return unless current_node
  if current_node.next.nil?
    current_node.next = prev_node
    return current_node
  else
    orig_next = current_node.next
    current_node.next = prev_node
    rec(orig_next, current_node)
  end
end
