
require 'player'
require 'property'
require 'roll'
require 'square'
require 'community_chest'
require 'chance'

class Board

  attr_reader :positions, :squares

  def initialize
    @positions = {}
    @squares = []
    generate
  end

#Player Logic

  def add_player
    p = Player.new
    @positions[p] = 0
    p
  end

  def move_player(player)
    current_roll = Roll.new
    @positions[player] += current_roll.full_roll
    if @positions[player] > 39
      @positions[player] -= 40
      player.bankroll += 200
    end
    current_roll.display_roll_value
    display_square_name(square_at(@positions[player]))
  end

  def place_player(player, destination)
    @positions[player] = destination
  end

#Individual Square Logic

  def square_at(position)
    @squares[position]
  end

  def display_square_name(square)
    puts square.name
  end

#Board Logic

  def square_location
    @squares.size
  end

  def generate
    @squares << Square.new(
      type: :event,
      name: "Go" 
    )
    @squares << Property.new(
      type: :property, 
      name: "Mediterranean Avenue",
      cost: 200, 
    )
  end

end