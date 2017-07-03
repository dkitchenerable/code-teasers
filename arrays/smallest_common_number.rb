# SOLVED
#Given three integer arrays sorted in ascending order, find the smallest number that is common in all three arrays.
# starting with i, set next index to smallest number

def find_smallest_common_number(a1, a2, a3)
  a1i = 0
  a2i = 0
  a3i = 0

  while a1i < a1.size && a2i < a2.size && a3i < a3.size
    return a1[a1i] if (a1[a1i] == a2[a2i]) &&  (a1[a1i]== a3[a3i])
    min = [a1[a1i], a2[a2i], a3[a3i]].min
    if min == a1[a1i]
      a1i += 1
    elsif min == a2[a2i]
      a2i += 1
    else
      a3i += 1
    end
  end
  return  nil
end

a1 = [1,2]
a2 = [2]
a3 = [1,2,3]

p find_smallest_common_number(a1, a2, a3)
