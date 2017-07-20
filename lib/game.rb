class Game

  def initialize(players_1, player_2)
    @players = [players_1, player_2]
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.receive_damage
  end
end
