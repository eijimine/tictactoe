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

    # turns columns into rows and checks if all values are of one kind

    @board.length.times do |i|
      column = @board.map { |row| row[i] }
      return 'o' if column.all?('o') 
      return 'x' if column.all?('x') 
    end


    # diagonal checks

    # Backward - iterate through each row while also increasing the index value
    # Forward - iterate through each row while starting the index at last element then
    #           decrease index with each row

    forward = []
    backward = []

    @board.each_with_index do |row, i|
      backward << row[i]
      forward << row[@board.length - (i + 1)]
    end

    return 'o' if forward.all?('o') || backward.all?('o')
    return 'x' if forward.all?('x') || backward.all?('x')


    # draws and unfinished

    # check for any empty spaces on the board, otherwise delcare as draw

    if @board.flatten.any?(" ")
      'unfinished'
    else
      'draw'
    end
  end
end
