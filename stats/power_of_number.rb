=begin
  problem: solve for power, given a power n and an integer x
  solution: solve recursively, by solving every n divided by 2
  time: O(logn)
  space: O(logn)...space complexity
=end
def power_of_number(x, n)
  # make positive for recursive purposes
  is_neg = false
  if n < 0
    n *= -1 
    is_neg = true
  end
  result = rec_pow(x, n)
  if is_neg
    return 1.0/result
  else
    return result
  end
end

def rec_pow(x, n)
  return 1 if n == 0
  return x if n == 1

  result = rec_pow(x, n/2)
  if (n % 2) == 0
    return result * result
  else
    return x * result * result
  end
end
