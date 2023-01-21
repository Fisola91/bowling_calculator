require "bowling_calculator"

RSpec.describe BowlingCalculator do
  SCENARIOS = [
    {
      rolls: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      score: 0
    },
    {
      rolls: [9, 1, 9, 1, 9, 1, 9, 1, 9, 1, 9, 1, 9, 1, 9, 1, 9, 1, 9, 1, 9],
      score: 190
    },
    {
      rolls: [10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10],
      score: 300
    },
    {
      rolls: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1, 0],
      score: 11
    },
    {
      rolls: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1, 0],
      score: 12
    },
    {
      rolls: [1, 4, 2, 8, 6, 4, 7, 3, 10, 10, 10, 9, 1, 4, 5, 6, 4, 9],
      score: 179
    }
  ];

  # let(:game) {Game.new()}
  SCENARIOS.each do|scenario|
    p scenario
    it "returns score of a Ten-pin bowling game for each scenario" do
      expect(subject.score(scenario[:rolls])).to eq(scenario[:score])
    end

  end
end
