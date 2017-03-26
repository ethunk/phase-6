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
    @game_info.each do |game|
      if @teams.include?(game[:home_team]) == false
        @teams << Team.new(game[:home_team])
      end
      if @teams.include?(game[:away_team]) == false
        @teams << Team.new(game[:away_team])
      end
      binding.pry
      if game[:home_score] > game[:away_score]
        @teams[index(game[:home_team]]).wins += 1
        @teams[index(game[:away_team]]).losses += 1
      else
        @teams[game[:home_team]].losses += 1
        @teams[game[:away_team]].wins += 1
      end
    end
    binding.pry
    @teams
    end
  end
