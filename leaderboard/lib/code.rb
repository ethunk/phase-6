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
require 'pry'
teams = []
  GAME_INFO.each do |game|
    if teams.include?(game[:home_team]) == false
      teams << game[:home_team]
    end
    # binding.pry
    if teams.include?(game[:away_team]) == false
      teams << game[:away_team]
    end
    # binding.pry
  end
    puts teams
