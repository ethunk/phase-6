class Leaderboard
require 'pry'
GAME_INFO = [
    {
      home_team: "Patriots",
      away_team: "Broncos",
      home_score: 17,
      away_score: 13
    },
    {
      home_team: "Broncos",
      away_team: "Colts",
      home_score: 24,
      away_score: 7
    },
    {
      home_team: "Patriots",
      away_team: "Colts",
      home_score: 21,
      away_score: 17
    },
    {
      home_team: "Broncos",
      away_team: "Steelers",
      home_score: 11,
      away_score: 27
    },
    {
      home_team: "Steelers",
      away_team: "Patriots",
      home_score: 24,
      away_score: 31
    }
]

  require_relative 'team.rb'

  attr_reader :game_info

  def initialize()
    @game_info = GAME_INFO
    @teams = []
  end

  def teams
    if @teams.count == 0
      team_names = []
      GAME_INFO.each do |game|
        team_names << game[:home_team]
        team_names << game[:away_team]
      end
      team_names.uniq!
      team_names.each do |name|
         @teams << Team.new(name)
      end
    end
    @teams
  end

  def calculate_records
      @teams.each do |team|
        GAME_INFO.each do |game|
            if game[:home_team] == team.name
              if game[:home_score] > game[:away_score]
                team.wins += 1
              else
                team.losses += 1
              end
            end
            if game[:away_team] == team.name
              if game[:away_score] > game[:home_score]
                team.wins += 1
              else
                team.losses += 1
              end
            end
          end
        end
    @teams
  end

  def calc_ranks
    @teams.sort_by! { |team| team.losses }
    @teams.each_with_index do |team,i|
      team.rank = i+1
    end
    @teams
  end

  def show
    output = ""
    60.times {output = output + "-"}
    output = output + "\n| Name       Rank       Total Wins         Total Losses |\n"
    @teams.each do |team|
      output = output + "| #{team.name}    #{team.rank}            #{team.wins}                  #{team.losses}          |\n"
    end
    60.times {output = output + "-"}
    output
  end

end
board = Leaderboard.new
board.teams
board.calculate_records
board.calc_ranks

binding.pry

# --------------------------------------------------
# | Name      Rank      Total Wins    Total Losses |
# | Patriots  1         3             0            |
# | Steelers  2         1             1            |
# | Broncos   3         1             2            |
# | Colts     4         0             2            |
# --------------------------------------------------
