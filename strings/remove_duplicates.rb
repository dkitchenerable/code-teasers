=begin
  problem: given an input string remove duplicates
  my solution: keep a set of "seen" characters, read and write pointer. write any read ptr character that is not in set
  time: O(n)
  space: O(n)
=end
require 'set'

def remove_duplicates(string)
  seen_map = Set.new
  write = 0
  read = 0
  chars = string.chars
  original_size = chars.size
  string.chars.each do |letter|
    if !seen_map.include?(letter)
      chars[write] = chars[read]
      write += 1
      seen_map.add(letter)
    end
    read += 1
  end
  chars.slice(0,write).join
end
