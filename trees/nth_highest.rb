def nth_highest(tree, n)
  @count = 0
  return  nth_rec(tree.root, n)
end


def nth_rec(node, n)
  return nil if node.nil? 

  result = nth_rec(node.right, n)

  return result unless result.nil?
  
  @count += 1
  return node if n == @count

  result = nth_rec(node.left, n)

  return result unless result.nil?

  return nil
end
