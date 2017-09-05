=begin
  problem: given n, find the nth smallest in a tree
  solution: get subtree counts and account for
  time: O(n+1)
  space: O(1)
=end
def nth_smallest(root, n)
  return nil if root.nil? # either n is greater than tree or tree is empty
  count = get_count(root.left)
  # when n = count + 1, then we are at the right spot
  if (n <= count)
    return nth_smallest(root.left, n)
  elsif (n > count + 1)
    return nth_smallest(root.right, n - 1 - count)
  end

  return root.key
end

def get_count(node)
  return 0 if node.nil?
  return 1 + get_count(node.left) + get_count(node.right)
end
