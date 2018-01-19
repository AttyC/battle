class Game

  attr_reader :current_turn

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_turn = player1
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def attack(player)
    player.damage
  end

  def switch_turns
    @current_turn = switch(current_turn)
  end

  def switch(current_player)
    @players.select { |player| player != current_player }.first
  end
end
