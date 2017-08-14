=begin
  problem: given a reg_ex(only . and *) and text, return if they are a match
  solution: solve recursively character by character until reaching the end
  time: exponential
  space: exponential, considering memory
=end
def regular_expression(text, pattern)
  reg_rec(text, pattern, 0, 0)
end

def reg_rec(text, pattern, t_i, p_i)
  # base case, catches an empty string, or end of both strings
  return true if (text.length == t_i && pattern.length == p_i)
  # handle if next character is *
  if (p_i < pattern.length - 1 && pattern[p_i + 1] == '*')
    for k in t_i + 1..text.length
      return true if (reg_rec(text, pattern, k, p_i + 2))
      return false if (k >= text.length)
      return false if (pattern[p_i] != '.' && text[k] != pattern[p_i])
    end
  # handle . or exact match
  elsif (t_i < text.length && p_i < pattern.length && (pattern[p_i] == '.' || pattern[p_i] == text[t_i]))
    return reg_rec(text, pattern, t_i + 1, p_i + 1)
  end

  return false
end
