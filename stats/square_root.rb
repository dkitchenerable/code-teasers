=begin
  problem: given a number(can be decimal),
  solution: perform binary search, until we find the digit
  time: O(logn)
  space: O(logn)..stack memory
=end
def square_root(x)
  return 0 if x == 0
  x_float = x.to_f
  sr_rec(x_float, 0, 1 + x_float/2)
end

def sr_rec(x, low, high)
  mid = (high + low) / 2
  test = mid*mid
  return mid if (x == test)
  if test < x
    sr_rec(x, mid, high)
  else
    sr_rec(x, low, mid)
  end
end
