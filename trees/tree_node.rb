class TreeNode

  attr_accessor :left, :right, :key, :value

  def initialize(key, value=nil)
    @left = nil
    @right = nil
    @key = key
    @value = value
  end

end
