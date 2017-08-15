=begin
  problem: given a sorted matrix, return the location of a key, if it exists
  solution: start with the far right corner. move left for less than and down for greater than
  time: O(num_rows + num_cols)
  space O(1)
=end
def search_sorted_matrix(matrix, key)
  return nil if matrix.empty?
  # get dimensions 
  matrix_size = matrix[0].size
  # set to top right corner
  col = matrix_size - 1
  row = 0
  while (col >= 0 && row < matrix_size)
    if matrix[row][col] > key
      col -= 1
    elsif matrix[row][col] < key
      row += 1
    else
      return [col, row]
    end
  end

  return nil
end
