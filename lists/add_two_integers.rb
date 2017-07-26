=begin  
  problem: given two lists, add together where least significant digit is at head
  solution: starting with least significant digit, add and handle carry in each case
  time:O(1)
  space:O(c)
=end
def add_two_integers(head1, head2)
  l1_ptr = head1
  l2_ptr = head2
  carry = 0
  sum_list = LinkedList.new

  while l1_ptr && l2_ptr
    # sum and carry calculations
    sum = l1_ptr.key + l2_ptr.key + carry
    sum_list.push_back(Node.new(sum % 10))
    carry = sum/10

    # advance nodes
    l1_ptr = l1_ptr.next
    l2_ptr = l2_ptr.next
  end

  # attach rest of pointers
  while l1_ptr
    sum = l1_ptr.key + carry
    sum_list.push_back(Node.new(sum % 10))
    carry = sum/10
    l1_ptr = l1_ptr.next
  end

  while l2_ptr
    sum = l2_ptr.key + carry
    sum_list.push_back(Node.new(sum % 10))
    l2_ptr = l2_ptr.next
  end

  # handle carry on last node case
  sum_list.push_back(Node.new(1)) if carry == 1

  return sum_list.head
end
