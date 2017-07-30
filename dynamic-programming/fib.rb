=begin
  problem: solve fibonacci sequence with constant memory
  my solution: simply update n-1 and n-2 results, making use of current result
  time: O(n)
  space: O(1)
=end
def fib(n)
  return 0 if n == 0
  n_2 = 1
  n_1 = 1
  result = 1
  for i in 3..n
    result = n_2 + n_1
    n_1 = n_2
    n_2 = result
  end
  return result
end
