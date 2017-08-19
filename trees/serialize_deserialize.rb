=begin
  problem: create a method to serialize a tree and consequently deserialize it
  solution: add to an array traversing preorder. placing nil in arrays that are empty
  time: O(n)
  space: O(logn)...memory stack 
=end
require_relative 'binary_search_tree.rb'

def serialize(root, serialized=[])
  if root == nil
    serialized << nil
    return serialized
  end
  serialized << root.key
  serialize(root.left,serialized)
  return serialize(root.right,serialized)
end

def deserialize(serialized)
  return nil if serialized.empty? 
  return serialized.delete_at(0) if serialized[0].nil?
  node = TreeNode.new(serialized.delete_at(0))
  node.left = deserialize(serialized)
  node.right = deserialize(serialized)
  return node
end
