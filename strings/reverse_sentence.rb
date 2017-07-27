require 'byebug'
=begin
  problem: given a sentence, reverse all the words 
  solution: simply reverse the entire sentence, then reverse the words back
  time: O(n)
  space: O(1)...technically n, but could do in-place by not using "chars"
=end
def reverse_sentence(sentence)
  rev_chars = sentence.chars
  reverse(rev_chars, 0, sentence.length - 1)

  curr_begin = 0
  curr_end = 0

  rev_chars.each do |letter|
    if letter == " " || curr_end == rev_chars.size - 1
      end_index =  letter == " " ? curr_end - 1 : curr_end
      reverse(rev_chars, curr_begin, end_index)
      curr_begin = curr_end + 1
    end
    curr_end += 1
  end

  return rev_chars.join
end

def reverse(rev_chars, start_i, end_i)
  while start_i < end_i
    temp = rev_chars[start_i]
    rev_chars[start_i] = rev_chars[end_i]
    rev_chars[end_i] = temp
    start_i += 1
    end_i -= 1
  end
end
