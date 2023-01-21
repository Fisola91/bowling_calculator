class BowlingCalculator
  def initialize
  end

  def score(rolls)
    total = 0
    i = 0
    frame = 1
    while i < rolls.length - 1 && frame < 10
      if rolls[i] == 10
        total += rolls[i] + rolls[i+1] + rolls[i+2]
        i += 1
      elsif rolls[i] + rolls[i+1] == 10
        total += rolls[i] + rolls[i+1] + rolls[i+2]
        i += 2
      else
        total += rolls[i] + rolls[i+1]
        i += 2
      end
      frame += 1
    end
    if rolls[i] + rolls[i + 1] == 10 || rolls[i] == 10
      total += rolls[i] + rolls[i + 1] + rolls[i + 2]
    else
      total += rolls[i] + rolls[i + 1]
    end
    total
  end
end
