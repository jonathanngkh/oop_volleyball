class Team

  def initialize
    @players = []
  end

  def ready?
    (player_count > 6 && player_count < 11)
  end

  def add(player)
    players << player
  end

  private

  def player_count
    players.count
  end

  attr_reader :players
end