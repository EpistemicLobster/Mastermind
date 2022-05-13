class Player
  def initialize(name, role, choices)
    @name = name
    @role = role
    @choices = choices
  end

  def make_move

  end
end

class Human < Player
  make_choice
end

class Computer < Player

end

class Board
  def initialize
    players = [Human.new('Human', '', Array.new), 
               Computer.new('Computer', '', Array.new)]
    board = Array.new(13) {Array.new(1, 'X X X X')}
    CHOICES = "Choices: \n 'R', 'G', 'B', 'Y'"
  end

  def show(array = board)
    board << Array.new(4, 'X')
  end
end

class Game

end

board.each_with_index { |e, i| puts "#{puts e} # #{i} " if i > 0}

# Correct Color & Position: Ͽ | Correct Color: Ͻ

board = {1 =>'X X X X', 2 =>'X X X X', 3 =>'X X X X', 4 =>'X X X X',
         5 =>'X X X X', 6 =>'X X X X', 7 =>'X X X X', 8 =>'X X X X',
         9 =>'X X X X', 10 =>'X X X X', 11 =>'X X X X', 12 =>'X X X X',}
i = 13
x = board.transform_keys do |k|
  k = i
  i-=1
end
x = Hash.new()

board = {:Pegs => "   Turns       Key",
  12=>"X X X X",          
  11=>"X X X X",
  10=>"X X X X",
  9=>"X X X X",
  8=>"X X X X",
  7=>"X X X X",
  6=>"X X X X",
  5=>"X X X X",
  4=>"X X X X",
  3=>"X X X X",
  2=>"X X X X",
  1=>"X X X X"}

  def output_hash(board, footer)
    board.each_pair do |k, v|
    puts  " #{v.join(' | ')}  #{k}"
    end
    puts footer
    "Please make a choice."
  end

  output_hash(board, CHOICES)

board = {:Pegs => ["   Guesses    Turn   Key"], 12=>%w(X X X X), 
         11=>%w(X X X X), 10=>%w(X X X X), 9=>%w(X X X X),
          8=>%w(X X X X), 7=>%w(X X X X), 6=>%w(X X X X), 
          5=>%w(X X X X), 4=>%w(X X X X), 3=>%w(X X X X),
          2=>%w(X X X X), 1=>%w(X X X X)}