class CommunityChest

  attr_accessor :active_player

  def initialize(player)
    @active_player = player
  end

#Deck Creation
  def play_card
    card_method = draw_card
    self.send(card_method)
  end

  def draw_card
    [:bank_error, :doctor_fees, :income_tax_refund, :school_fee, :life_insurance,
      :inheritance, :holiday_fund, :stock_sale, :beauty_contest, :cunsultancy_fee,
      :hospital_fee ].sample
  end


#specific cards

  def bank_error
    puts "Bank error in your favor - collect $75"
    @active_player.bankroll += 75
  end

  def doctor_fees
    puts "Doctor's fees - Pay $50"
    @active_player.bankroll -= 50
  end

  def income_tax_refund
    puts "Income Tax refund - collect $20"
    @active_player.bankroll += 20 
  end

  def school_fee
    puts "Pay School Fees of $50"
    @active_player.bankroll -= 50
  end

  def life_insurance
    puts "Life Insurance Matures - collect $100"
    @active_player.bankroll += 100
  end

  def inheritance
    puts "You inherit $100"
    @active_player.bankroll += 100
  end

  def holiday_fund
    puts "Holiday Fund matures - Receive $100"
    @active_player.bankroll += 100
  end

  def stock_sale
    puts "From sale of stock you get $50"
    @active_player.bankroll += 50
  end

  def beauty_contest
    puts "You have won second prize in a beauty contest - collect $10"
    @active_player.bankroll += 10
  end

  def consultancy_fee
    puts "Receive $25 Consultancy Fee"
    @active_player.bankroll += 25
  end

  def hospital_fee
    puts "Pay Hospital Fees of $100"
    @active_player.bankroll -= 100
  end

  def advance_to_go
    puts "Advance to Go (Collect $200)"
    place_player(@active_player, 0)
  end

  
end


# Get out of jail free – this card may be kept until needed, or sold 
# Go to jail – go directly to jail – Do not pass Go, do not collect $200 
# It is your birthday Collect $10 from each player 
# Grand Opera Night – collect $50 from every player for opening night seats 
# You are assessed for street repairs – $40 per house, $115 per hotel 

