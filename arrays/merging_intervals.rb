=begin
  problem: give an array that compares pairs of intervals(start time is sorted), return an array where pairs that overlap have been combined
 solution: merge pairs into a new array if they overlap, else simply put into new array
 NOTE: pairs are represented by an array of size 2
 time: O(n)
 space: O(1) (worst-case)
=end

def merging_intervals(arr)
  return arr if arr.size < 2
  merged_intervals = []
  temp_interval = arr[0]
  for i in 1..arr.size - 1
    if arr[i][0] <= temp_interval[1]
      temp_interval[1] = arr[i][1] if arr[i][1] > temp_interval[1]
    else
      merged_intervals << temp_interval
      temp_interval = arr[i]
    end
  end
  merged_intervals << temp_interval
  return merged_intervals
end
