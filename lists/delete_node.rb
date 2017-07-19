require_relative '../helpers/node.rb'
=begin
  problem: given a list with no duplicates, return head pointer with key removed
  my solution: keep track of previous and assign next to the next of the matching node
  time: O(n)
  space: O(1)
=end

def delete_node(head, key)
  # take care of base cases
  return nil if head.nil?
  return head.next if head.key == key

  prev_node = nil
  current_node = head
  while current_node
    if current_node.key == key
      prev_node.next = current_node.next
      break
    else
      prev_node = current_node
      current_node = current_node.next
    end
  end
  
  return head
end
