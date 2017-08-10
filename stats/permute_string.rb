require_relative '../helpers/utility.rb'
=begin
  problem: given a string, return all permutations
  solution: solve each permutation recursively
  time:O(n!)
  space:O(n)...because of recursion stack
=end

def permute_string(perm_string)
  char_array = perm_string.chars
  permute_rec(char_array,0,char_array.size - 1, [])
end

def permute_rec(char_array,current_i, end_i, perms)
  perms << char_array.join("") if current_i == end_i

  for i in current_i..end_i
    Utility.swap(char_array, current_i, i)
    permute_rec(char_array,current_i + 1, end_i, perms)
    Utility.swap(char_array, current_i, i)
  end

  return perms
end
