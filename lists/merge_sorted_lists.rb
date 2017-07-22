require_relative '../helpers/node.rb'
=begin
  problem: given two sorted lists, merge them into one in orer
  solution: starting with the smaller of each node, add to next by iteratively comparing
  time: O(m + n) where m is n of 1 list
  space: O(1)
=end

def merge_sorted_lists(h1, h2)
  # handle empty cases
  return nil if h1.nil? && h2.nil?
  return h1 if h2.nil?
  return h2 if h1.nil?

  merged_head = h1.key > h2.key ? h2 : h1
  current_1 = merged_head.key == h1.key ? h1.next : h1
  current_2 = merged_head.key == h2.key ? h2.next : h2
  merged_ptr = merged_head

  while current_1 && current_2
    if current_1.key > current_2.key
      merged_ptr.next = current_2
      current_2 = current_2.next
    else
      merged_ptr.next = current_1
      current_1 = current_1.next
    end
    merged_ptr = merged_ptr.next
  end

  # copy all the rest over
  while current_1
    merged_ptr.next = current_1
    current_1 = current_1.next
    merged_ptr = merged_ptr.next
  end

  # copy all the rest over
  while current_2
    merged_ptr.next = current_2
    current_2 = current_2.next
    merged_ptr = merged_ptr.next      
  end

  return merged_head
end
