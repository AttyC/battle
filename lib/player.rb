require_relative 'game'

class Player
  attr_reader :name, :hitpoints

  def initialize(name, hitpoints = 100)
    @name = name
    @hitpoints = hitpoints
  end

  def damage
    @hitpoints -= 10
    p @hitpoints
    lost?
    p lost?
  end

  private
  def lost?
    return true if @hitpoints == 0
    false
  end

end
