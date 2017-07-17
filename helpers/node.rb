require_relative 'linked_list.rb'
class Node
  attr_accessor :next, :key, :value
  def initialize(k, v=nil)
    @key = k
    @value = v
    @next = nil
    @prev = nil
  end
end
