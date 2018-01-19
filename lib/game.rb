class Game

#new class method to create new class variable
  def self.create(player1, player2)
    @this_game = Game.new(player1, player2)
  end

  def self.instance
    @this_game
  end
  
  attr_reader :current_turn, :active_player, :opponent

  def initialize(player1, player2)
    @players = [player1, player2]
    @active_player = player1
    @opponent = player2
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
    @active_player = switch(active_player)
    @opponent = switch(opponent)
  end

  def switch(current_player)
    @players.select { |player| player != current_player }.first
  end
end
