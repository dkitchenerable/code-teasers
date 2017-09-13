=begin
  problem: given a string, find all substrings that are palindromes
  solution: go to every character and check from beginning to end if a palindrome
  time: O(n^2)
  space: O(1)...technically n, because of chars
=end
def palindrome_substrings(string)
  pals = []
  chars = string.chars
  for i in 0..chars.length - 1
    # for palindromes of odd characters
    append_substrings(chars, i-1, i+1, pals)
    # for palindromes of even characters
    append_substrings(chars, i, i+1, pals)
  end
  return pals
end

def append_substrings(chars, i1, i2, pals)
  while i1 >= 0 && i2 < chars.size
    break if chars[i1] != chars[i2]
    pals << chars.slice(i1, i2-i1 + 1).join("")
    i1 -= 1
    i2 += 1
  end
end
