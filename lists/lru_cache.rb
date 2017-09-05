require_relative 'node.rb'

class LruCache
  def initialize(capacity)
    @value_map = {}
    @cache_list = nil
    @capacity = capacity
  end

  def put(k,v)
    @value_map[k] = v
    node = Node.new(k)
    @cache_list.push_back(node)
    evict if @cache_list.size > capacity
  end

  def get(k,v)
    move_to_end
  end

  private

  def evict
    node = @cache_list.pop_front
    @value_map.delete(node.key)
  end

end
