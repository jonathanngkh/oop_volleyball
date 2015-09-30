class Team

  def initialize
    @players = []
  end

  def ready?
    if players.count > 6
      true
    else
      false
    end
  end

  def add(player)
    players << player
  end

  private
  attr_reader :players
end