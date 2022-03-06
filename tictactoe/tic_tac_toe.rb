class TicTacToe
  def initialize(board)
    @board = board
  end

  def winner
    # row1 = @board[0]
    # row2 = @board[1]
    # row3 = @board[2]


    # row checks

    @board.each do |row|
      return 'o' if row.all?('o') 
      return 'x' if row.all?('x')
    end

    # if row1[0] == "o" && row1[1] == "o" && row1[2] == "o"
    #   return "o"
    # end

    # if row2[0] == "o" && row2[1] == "o" && row2[2] == "o"
    #   return "o"
    # end

    # if row3[0] == "o" && row3[1] == "o" && row3[2] == "o"
    #   return "o"
    # end

    # if row1[0] == "x" && row1[1] == "x" && row1[2] == "x"
    #   return "x"
    # end

    # if row2[0] == "x" && row2[1] == "x" && row2[2] == "x"
    #   return "x"
    # end

    # if row3[0] == "x" && row3[1] == "x" && row3[2] == "x"
    #   return "x"
    # end

    # column checks

    @board.length.times do |i|
      column = @board.map { |row| row[i] }
      return 'o' if column.all?('o') 
      return 'x' if column.all?('x') 
    end

    # if row1[0] == "o" && row2[0] == "o" && row3[0] == "o"
    #   return "o"
    # end

    # if row1[1] == "o" && row2[1] == "o" && row3[1] == "o"
    #   return "o"
    # end

    # if row1[2] == "o" && row2[2] == "o" && row3[2] == "o"
    #   return "o"
    # end

    # if row1[0] == "x" && row2[0] == "x" && row3[0] == "x"
    #   return "x"
    # end

    # if row1[1] == "x" && row2[1] == "x" && row3[1] == "x"
    #   return "x"
    # end

    # if row1[2] == "x" && row2[2] == "x" && row3[2] == "x"
    #   return "x"
    # end

    # diagonal checks

    # creating arrays to be made into diagonal row
    forward = []
    backward = []

    # Backward - iterate through each row while also increasing the index value
    # Forward - starting from the last row, decrease the row index with each
    #           loop while increasing the column index
    @board.each_with_index do |row, i|
      backward << row[i]
      forward << @board[@board.length - (i + 1)][i]
    end

    return 'o' if forward.all?('o') || backward.all?('o')
    return 'x' if forward.all?('x') || backward.all?('x')

    # if row1[0] == "o" && row2[1] == "o" && row3[2] == "o"
    #   return "o"
    # end

    # if row1[2] == "o" && row2[1] == "o" && row3[0] == "o"
    #   return "o"
    # end

    # if row1[0] == "x" && row2[1] == "x" && row3[2] == "x"
    #   return "x"
    # end

    # if row1[2] == "x" && row2[1] == "x" && row3[0] == "x"
    #   return "x"
    # end

    # return "draw"
  end
end
