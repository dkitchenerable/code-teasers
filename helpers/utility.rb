module Utility
  def self.swap(arr, i1, i2)
    temp = arr[i1]
    arr[i1] = arr[i2]
    arr[i2] = temp
   end

  def self.reverse(arr, start_i=nil, end_i=nil)
    start_i = 0 unless start_i
    end_i = 0 unless end_i
    while start_i < end_i
      swap(arr, start_i, end_i)
      start_i += 1
      end_i -= 1
    end
  end
end
