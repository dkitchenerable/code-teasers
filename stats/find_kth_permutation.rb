=begin
  problem: given an array of elements and an integer k, find the "kth" permutation
  solution: solve recursivley by figuring out smaller permutations and appending
  time: O(n)
  space: O(n)...considering recursive stack
=end
def find_kth_permutation(elems,k,result="")
  return result if elems.size == 0 || k == 0

  block_size = factorial(elems.size-1)
  k_location = (k-1)/block_size
  result += elems[k_location].to_s
  elems.delete_at(k_location)
  k = k - (block_size*k_location)

  find_kth_permutation(elems, k, result)
end

def factorial(n)
  return 1 if n < 1
  sum = 1
  while n > 1
    sum *= n
    n -= 1
  end
  return sum
end
