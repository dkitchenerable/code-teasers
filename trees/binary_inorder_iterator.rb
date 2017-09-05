class InorderIterator
  def initialize(root)
  end
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

  def pop(elem)
    elem = @stack[@num_elems]
    @num_elems -= 1
    elem
  end

  def empty?
    @num_elems == 0
  end
end
