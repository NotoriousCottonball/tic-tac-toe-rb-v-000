WIN_COMBINATIONS = [
  [0,1,2]
  [3,4,5]
  [6,7,8]
  [0,3,6]
  [1,4,7]
  [2,5,8]
  [2,4,6]
  [0,4,8]
  ]
  
def display_board(board) 
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1 
end

def move(board, index, token)
  board[index] = token
end

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " " || board[index] == "")
end

def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    true 
  else 
    false 
  end
end

def turn_count(board)
  turn_counter = 0 
  board.each do  |index|
    if index == "X" || index == "Y"
      turn_counter += 1 
    end
  end
  turn_counter
end



    
  
