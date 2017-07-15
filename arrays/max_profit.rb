=begin
  problem: given an array of integer, the best "buy" price, "sell" price and corrseponding "profit".
  NOTE: prices are in order, so a sell cannot happen before a buy; array cannot be less than two
  my solution:
  time: O(n)
  space: O(1)
=end

def max_profit(arr)
  raise "array must contain at least 2 values" if arr.size < 2
  min_buy = arr[0]
  max_sell = arr[1]
  max_profit = max_sell - min_buy
  for i in 1..arr.size - 1
    temp_profit = arr[i] - min_buy
    if temp_profit > max_profit
      max_profit = temp_profit
      max_sell = arr[i]
    end
    min_buy = arr[i] if arr[i] < min_buy
  end
  return [max_sell - max_profit, max_sell, max_profit]
end
