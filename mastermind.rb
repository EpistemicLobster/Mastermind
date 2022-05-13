class Player
  def initialize(name, role, choice)
    @name = name
    @role = role
    @choice = choice
  end

  attr_accessor :choice, :role, :choice

  def make_move(choices)
    @choice = [choices]
  end
end

class Human < Player
  def make_move(choices)
    puts 'Please input a for each location:'
    puts 'Example: 1R 2B 3Y 4G'
    super
    @choice = gets.chomp.split(' ')
  end
end

class Computer < Player
end

class Board
  def initialize
    @players = [Human.new('Human', '', []),
               Computer.new('Computer', '', [])]
    @game_board = { :Pegs => ['   Guesses    Turn   Key'], 12 => %w[X X X X], 
              11 => %w[X X X X], 10 => %w[X X X X], 9 => %w[X X X X],
              8 => %w[X X X X], 7 => %w[X X X X], 6 => %w[X X X X], 
              5 => %w[X X X X], 4 => %w[X X X X], 3 => %w[X X X X],
              2 => %w[X X X X], 1 => %w[X X X X] }
    @choices = "Choices: 'R', 'G', 'B', 'Y'"
  end
  attr_accessor :players, :game_board, :choices

  def show(footer = choices)
    game_board.each_pair do |k, v|
      puts " #{v.join(' | ')}  #{k}"
    end
    puts footer
  end
end

class Game
end

# Correct Color & Position: Ͽ | Correct Color: Ͻ

# Built method to show and display board properly
# Built method to add new computer and human player

