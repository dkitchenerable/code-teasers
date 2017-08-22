=begin
  problem: given a string, determine if number is valid
  solution: keep track of each state and dismiss invalid moves
  time: O(n)
  space O(1)
=end
def is_valid_number?(num_string)
 current_state = "START"
 num_string.chars.each do |num|
  current_state = advance_state(num, current_state)
  return false if current_state == "WRONG"
 end
 current_state != "START"
end

def advance_state(ch, state)
  case state
  when "START"
    if (ch >= '1' && ch <= '9')
      return "INTEGER"
    elsif(ch == '0')
      return "LEADING_ZERO"
    else
      return "WRONG"
    end
  when "LEADING_ZERO"
    if (ch == '.')
      return "DECIMAL"
    else
      return "WRONG"
    end
  when "INTEGER"
    if (ch == '.')
      return "DECIMAL"
    elsif (ch >= '0' && ch <= '9')
      return "INTEGER"
    else
      return "WRONG"
    end
  when "DECIMAL"
    if (ch >= '0' && ch <= '9')
      return "DECIMAL"
    else
      return "WRONG"
    end
  end
end
