class Player

  attr_accessor :bankroll
  def initialize
    @bankroll = 1500
    @properties = []
  end

  def purchase_property(property)
    @bankroll -= property.cost
    @properties << property 
  end

end