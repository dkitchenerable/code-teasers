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
  return nil if serialized.empty? || serialized[0].nil?
  node = TreeNode.new(serialized.delete_at(0))
  p serialized
  node.left = deserialize(serialized)
  node.right = deserialize(serialized)
  return node
end

tree = BinarySearchTree.new
tree.put(100)
tree.put(50)
tree.put(25)
tree.put(75)
tree.put(200)
tree.put(350)
result = serialize(tree.root)
result = deserialize(result)
p result.left.key
p result.left.right.key

