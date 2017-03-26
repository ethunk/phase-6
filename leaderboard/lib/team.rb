class Team

  attr_accessor :name, :rank, :wins, :losses

  def initialize(name, wins=0, losses=0)
    @name = name
    @rank = rank
    @wins = wins
    @losses = losses
  end

end
