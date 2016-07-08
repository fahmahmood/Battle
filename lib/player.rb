class Player 

  DEFAULT_HITPOINTS = 60

  attr_reader :name, :hitpoints

  def initialize(name)
    @name = name
    @hitpoints = DEFAULT_HITPOINTS
  end 

  def suffer_damage
    @hitpoints -= 10
  end

end 