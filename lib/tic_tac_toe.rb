class TicTacToe
  attr_accessor :board
  
  WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]] 
  
  def initialize(board = Array.new(9, " "))
    @board = board
  end
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(input)
    input = input.to_i
    input -=1
  end
  
  def move(input, token = "X")
    @board[input] = token
  end
  
  def position_taken?(input)
    @board[input] == "X" || @board[input] == "O" 
  end
  
  def valid_move?(input)
    !position_taken?(input) && input < @board.length
  end
  
  def turn_count
    @board.count{|token| token == "X" || token == "O"}
  end
  
  def current_player
    turn_count % 2 == 0 ? "X" : "O"
  end
  
  def turn
    puts "Choose a number between 1-9"
    input = gets.chomp
    input = input_to_index(input)
    

    if valid_move?(input)
      move(input,current_player)
      display_board
   end
   
  end
    
  
  
end