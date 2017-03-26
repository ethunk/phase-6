require 'spec_helper'
require_relative '../../lib/leaderboard.rb'
require 'pry'
RSpec.describe Leaderboard do
  let(:test_board) { Leaderboard.new }
  describe ".new" do
    it 'Creates a new object and is the class Leaderboard' do
      expect(test_board = Leaderboard.new).to be_a(Leaderboard)
    end

    it 'stored instance variable of the game data is a reader' do
      test_board = Leaderboard.new
      expect(test_board.game_info).to be_truthy
    end
    it 'stored instance vairable is NOT a writer' do
      test_board = Leaderboard.new
      expect { test_board.game_info = 4 }.to raise_error(NoMethodError)
    end
  end
  describe ".teams" do
    it 'creates team objects with only their names' do
      expect(test_board.teams).to be_a(Array)
      expect(test_board.teams.count).to be > 1
    end
  end

  describe ".calculate_records"
    it 'iterates to calculate the win/loss record of each team' do
      test_board
      expect(test_board.calculate_records)
    end

  describe ".show" do
    it 'outputs the leaderboard' do

    end
  end
end
