require_relative 'linked_list.rb'
class Node
  attr_accessor :next, :key, :value
  def initialize(k, v=nil)
    @key = k
    @value = v
    @next = nil
    @prev = nil
  end

  def self.all_keys(head)
    current_node = head
    keys = []
    while current_node
      keys << current_node.key
      current_node = current_node.next
    end
    return keys
  end
end
