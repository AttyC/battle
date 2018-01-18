class Player
  attr_reader :name, :hitpoints

  def initialize(name, hitpoints = 100)
    @name = name
    @hitpoints = hitpoints
  end

  def attack(player)
    player.damage
  end

  def damage
    @hitpoints -= 10
  end


end
