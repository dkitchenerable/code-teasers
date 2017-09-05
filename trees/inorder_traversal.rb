def inorder_traversal(tree)
  print_arr = []
  node = tree.root
  stack = Stack.new
  while (!stack.empty? || node)
    if node
      stack.push(node)
      node = node.left
    else
      pop_node = stack.pop
      print_arr << pop_node.key
      node = pop_node.right
    end
  end
  return print_arr
end

class Stack
  def initialize
    @stack = []
    @num_elems = 0
  end

  def push(elem)
    @stack[@num_elems] = elem
    @num_elems += 1
  end

  def pop
    elem = @stack[@num_elems - 1]
    @num_elems -= 1
    elem
  end

  def top
    @stack[@num_elems]
  end

  def empty?
    @num_elems == 0
  end
end
