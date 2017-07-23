require_relative '../helpers/node.rb'
=begin
  problem: given a list, reverse even nodes
  my solution: put even/odd nodes into separate list, where even nodes are reversed. Then merge back together.
  time: O(n)
  space: O(1)
=end

def reverse_even_nodes(list)
  counter = 1
  odd_list = LinkedList.new
  even_list = LinkedList.new
  while !list.empty?
    if (counter % 2) == 0
      even_list.push_front(list.pop_front)
    else
      odd_list.push_back(list.pop_front)
    end
    counter += 1
  end
  counter = 1
  while !even_list.empty? || !odd_list.empty?
    if (counter % 2) == 0
      list.push_back(even_list.pop_front)
    else
      list.push_back(odd_list.pop_front)
    end
    counter += 1
  end

  return list
end
