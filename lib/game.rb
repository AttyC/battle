class Game

attr_reader :player, :hitpoints

  def attack(player)
    player.damage
  end

end
