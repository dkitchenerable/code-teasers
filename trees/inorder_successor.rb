=begin
  problem: find the immediate next key in order, given a key
  solution: using bst search, either find min child of node's right or in levels above
  time: O(logn)
  space: O(h)...considering the memory on the stack...alternatively, could use a while loop to do constant time
=end
def inorder_succesor(node, key, parent = nil)
  # no match cases
  return nil if node.nil?
  if key > node.key
    return inorder_succesor(node.right, key, parent)
  elsif key < node.key
    return inorder_succesor(node.left, key, node)
  else # match case
    # if no right child
    return parent if node.right.nil?

    # if right child
    return find_min(node.right) if node.right
  end
end

def find_min(node)
  return node if node.left.nil?
  find_min(node.left)
end
