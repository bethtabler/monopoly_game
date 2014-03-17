class Chance

  attr_accessor :current_player

  def initialize(player)
    @current_player = player
  end

  #Deck Creation
  def play_card
    card_method = draw_card
    self.send(card_method)
  end

  def draw_card
    [:poor_tax, :building_loan, :crossword_competition, :bank_dividend  ].sample
  end



#specific cards
  def poor_tax
    puts "Pay poor tax of $15"
    @current_player.bankroll -= 15
  end

  def building_loan
    puts "Your building loan matures - collect $150"
    @current_player.bankroll += 150
  end

  def crossword_competition
    puts "You have won a crossword competition - collect $100"
    @current_player.bankroll += 100
  end

  def bank_dividend
    puts "Bank pays you dividend of $50"
    @current_player.bankroll += 50
  end 

  def advance_to_go
    puts "Advance to Go (Collect $200)"
    place_player(@active_player, 0)
  end

  # def advance_to_illinois
  #   puts "Advance to Illinois Avenue"
  #   place_player(@active_player, 24)
  # end 

end

 
# Advance token to nearest Utility. If unowned, you may buy it from the Bank. If owned, throw dice and pay owner a total ten times the amount thrown. 
# Advance token to the nearest Railroad and pay owner twice the rental to which 
#he/she is otherwise entitled. If Railroad is unowned, you may buy it from the Bank. 
#(There are two of these.) 
# Advance to St. Charles Place – if you pass Go, collect $200
# Get out of Jail free – this card may be kept until needed, or traded/sold 
# Go back 3 spaces 
# Go directly to Jail – do not pass Go, do not collect $200 
# Make general repairs on all your property – for each house pay $25 – for each hotel $100 
# Take a trip to Reading Railroad – if you pass Go collect $200 
# Take a walk on the Boardwalk – advance token to Boardwalk 
# You have been elected chairman of the board – pay each player $50 
# 
