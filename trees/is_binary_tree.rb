=begin
  problem: determine if tree is a binary tree
  solution: using inorder traversal search, keep track of previous node
  time: O(n)
  space: O(h)...considering the memory on the stack
=end
require 'byebug'
def is_binary_tree(root)
  return rec_bin(root, nil)
end

def rec_bin(node, prev)
  return true if node.nil?
  return false if !rec_bin(node.left, prev)
  return false if (!prev.nil? && prev.key >= node.key)
  return rec_bin(node.right, node)
end
