class TicTacToe
  def initialize(board)
    @board = board
  end

  def winner

    # row checks

    @board.each do |row|
      return 'o' if row.all?('o') 
      return 'x' if row.all?('x')
    end


    # column checks

    @board.length.times do |i|
      column = @board.map { |row| row[i] }
      return 'o' if column.all?('o') 
      return 'x' if column.all?('x') 
    end


    # diagonal checks

    # Backward - iterate through each row while also increasing the index value
    # Forward - starting from the last row, decrease the row index with each
    #           loop while increasing the column index
    
    forward = []
    backward = []

    @board.each_with_index do |row, i|
      backward << row[i]
      forward << @board[@board.length - (i + 1)][i]
    end

    return 'o' if forward.all?('o') || backward.all?('o')
    return 'x' if forward.all?('x') || backward.all?('x')


    # draws and unfinished

    if @board.flatten.any?(" ")
      'unfinished'
    else
      'draw'
    end
  end
end
