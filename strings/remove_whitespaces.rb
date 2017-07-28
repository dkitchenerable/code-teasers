=begin
  problem: given an input string remove blank spaces
  solution: keep a read and write pointer. write any read ptr character that is not a space
  time: O(n)
  space: O(1)...my implementation is O(n), but could simply point mark end of string in a c implementation 
=end
def remove_whitespaces(string)
  write = 0
  read = 0
  chars = string.chars
  original_size = chars.size
  string.chars.each do |letter|
    if letter != ' '
      chars[write] = chars[read]
      write += 1
    end
    read += 1
  end
  chars.slice(0,write).join
end
