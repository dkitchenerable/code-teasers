=begin
  problem: given two roots of a binary tree, find if they are identical
  my solution: verify keys and subtrees are identical recursively
  time: O(n)
  space: O(h)...if you consider the stack in memory
=end
def identical_trees(root1, root2)
  if (root1.nil? && root2.nil?)
    return true
  elsif (root1.nil? || root2.nil?)
    return false
  else 
    return ( root1.key == root2.key && identical_trees(root1.left, root2.left) && identical_trees(root1.right, root2.right))
  end
end
