require_relative '../helpers/node.rb'
require 'set'
=begin
  problem: remove all duplicates in a list
  my solution: keep track of previous nodes and visited nodes. Point to the current nodes next, if the current node has a visited key
  time: O(n)
  space: O(n)
=end
def remove_duplicates(head)
  return nil unless head
  visited = Set.new
  visited.add(head.key)
  prev_node = head
  current_node = head.next
  while current_node
    # when adding to a set via add?, a nil signals existence in set
    unless visited.add?(current_node.key)
      # no need to change prev_node
      prev_node.next = current_node.next
    else
      prev_node.next = current_node
      prev_node = current_node
    end
    current_node = current_node.next
  end
 
  return head
end
