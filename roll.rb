
class Roll

    attr_reader :die_1, :die_2

  def initialize
    @die_1 = rand(1..6)
    @die_2 = rand(1..6)
  end

  def full_roll
    @die_1 + @die_2
  end

  def needs_reroll?
    @die_1 == @die_2
  end

  def display_roll_value
    puts "A roll of #{full_roll}"
  end

end